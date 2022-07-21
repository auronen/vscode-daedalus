/*---------------------------------------------------------
 * Copyright (C) Microsoft Corporation. All rights reserved.
 *--------------------------------------------------------*/

'use strict';

import * as vscode from 'vscode';
import * as path from 'path';
import * as os from 'os';
import { ServerOptions, LanguageClient, LanguageClientOptions } from 'vscode-languageclient/lib/node/main'
import { Trace } from 'vscode-jsonrpc';

import { ConfigurationTarget, workspace } from 'vscode';
import { log } from 'console';

const LANGUAGE: string = "daedalus";
const CONFIGSEC: string = "daedalusLanguageServer";

export function activate(context: vscode.ExtensionContext) {
	const platform = os.platform();
	
	let serverExe = path.join(context.extensionPath, 'languageserver', 'DaedalusLanguageServer');
	if (platform === 'win32') {
		serverExe = path.join(context.extensionPath, 'languageserver', 'DaedalusLanguageServer.exe');
	} else if (platform === 'darwin') {
		serverExe = path.join(context.extensionPath, 'languageserver', 'DaedalusLanguageServer_darwin');
	} else if (platform == 'linux') {
		serverExe = path.join(context.extensionPath, 'languageserver', 'DaedalusLanguageServer.x64');
	};
	
	let serverOptions: ServerOptions = {
		run: { command: serverExe, args: ["-loglevel", "info"] },
		debug: { command: serverExe, args: ["-loglevel", "debug"] }
	}
	
	// Options to control the language client
	let clientOptions: LanguageClientOptions = {
		// Register the server for plain text documents
		documentSelector: [
			{ language: LANGUAGE, },
			{ pattern: '**/*.d', },
			{ pattern: '**/*.D', }
		],
		synchronize: {
			configurationSection: CONFIGSEC,
		}
	}
	
	// On activation set settings from workspace settings (if not set from global settings)
	let newSetting = workspace.getConfiguration(CONFIGSEC).get('daedalusEncoding');
	log("Global or workspace encoding found on start: %s", newSetting);
	workspace.getConfiguration("files").update("encoding", newSetting, false, undefined);

	// Change workspace encoding setting on config change
	workspace.onDidChangeConfiguration(event => {
		const configurationWorkspace = workspace.getConfiguration(CONFIGSEC);

		let affected = event.affectsConfiguration(CONFIGSEC);
		if (affected) {
			let newSetting = configurationWorkspace.get('daedalusEncoding');

			log("Setting new encoding: %s", newSetting);

			workspace.getConfiguration("files").update("encoding", newSetting, false, undefined);
		}
	})
	
	// Create the language client and start the client.
	const client = new LanguageClient('languageServer', 'Language Server', serverOptions, clientOptions);
	client.trace = Trace.Verbose;
	let languageServerClient = client.start();

	context.subscriptions.push(
		languageServerClient,
	);
}
