# Outlit plugin package

The upload package for the ChatGPT plugin directory, in the [Agent Plugins](https://agent-plugins.org) portable format. It points ChatGPT at the hosted Outlit MCP server and carries the directory listing and review test cases.

- `plugin.json`: package identity, plus listing copy, review test cases and release notes under `extensions.com.openai`.
- `mcp.json`: the hosted server at `https://mcp.outlit.ai/mcp`, OAuth with dynamic client registration through Clerk. The scopes include `user:org:read`, so users pick a workspace on the consent screen, and `offline_access`, so ChatGPT gets a refresh token.
- `assets/`: the 512×512 icon.

The package has no skills. The public Outlit skill covers the CLI and API-key setup, which doesn't apply in ChatGPT.

## Build

```sh
./build.sh
```

It writes `dist/outlit-plugin-<version>.zip`, which is gitignored. Upload it at platform.openai.com/plugins. Raise `version` in `plugin.json` for every upload.

## Before submitting

- Replace `review.demo_recording_url`. A reviewer must be able to open the video.
- Enter reviewer credentials and the client secret, if any, in the OpenAI dashboard. Never put them in this package.
- The test cases assume the seeded AI Store Review workspace has paying customers with calls, emails, tickets and plan data.

`mcp.json` places auth under each server's `extensions.com.openai`, as OpenAI's docs require. The strict agent-plugins.org 1.0.0 schema doesn't allow that key, so a strict validator flags it.
