# Outlit MCP

Outlit is the real-time understanding of every customer, the infrastructure agents use to automate customer operations.

This repository is the public discovery pointer for the hosted Outlit remote MCP server. It does not contain the server implementation. Canonical runtime metadata is served from Outlit-owned domains so MCP clients, registries, and crawlers have one source of truth.

## Connect

Use the workspace-specific URL shown in Outlit Settings > CLI & MCP:

```text
https://mcp.outlit.ai/w/<workspace-slug>/mcp
```

The shared discovery endpoint is:

```text
https://mcp.outlit.ai/mcp
```

The remote MCP endpoint supports OAuth and scoped Outlit API keys. OAuth is the preferred setup for interactive clients; both methods expose the same public tool catalog, while each call remains limited by the signed-in member's current permissions or the API key's explicit grants. The MCP OAuth metadata is published at:

- Protected resource metadata: https://mcp.outlit.ai/.well-known/oauth-protected-resource/mcp
- Authorization server metadata: https://clerk.outlit.ai/.well-known/oauth-authorization-server

Scoped workspace API keys remain supported as bearer credentials for manual or headless clients that cannot complete OAuth.

## Discovery

- MCP server card: https://mcp.outlit.ai/.well-known/mcp/server-card.json
- MCP registry metadata: https://mcp.outlit.ai/.well-known/mcp/server.json
- Agentic Resource Discovery catalog: https://outlit.ai/.well-known/ai-catalog.json
- API catalog: https://outlit.ai/.well-known/api-catalog
- OpenAPI spec: https://docs.outlit.ai/openapi.json
- Official MCP Registry listing: https://registry.modelcontextprotocol.io/v0.1/servers?search=ai.outlit/outlit
- MCP docs: https://docs.outlit.ai/ai-integrations/mcp
- Platform Capabilities docs: https://docs.outlit.ai/ai-integrations/platform-actions
- LLM resource index: https://outlit.ai/llms.txt

The official MCP Registry package name is `ai.outlit/outlit`.

## Tools

The hosted server exposes the public capability catalog published in the canonical server card and documentation. Current capability families cover:

- Customer and user discovery, profiles, relationships, timelines, facts, sources, and semantic context search
- Customer ownership, collaboration access, and attention items
- Read-only SQL analytics and schema inspection
- Safe destination lifecycle management
- Integration discovery, browser setup, and setup/sync status
- Customer activation, workspace settings, and Feature listing, creation, archiving, and per-customer usage

The server also exposes read-only SQL views for `activity`, `customers`, `users`, and `revenue`.

Keep detailed tool names, descriptions, and schemas in the canonical server card, MCP docs, and Platform Capabilities docs rather than copying them here.

## Skills

Install the official Outlit skills through the Outlit CLI:

```bash
outlit setup skills
```

Or install directly from the public skills repository:

```bash
npx -y skills add OutlitAI/skills --skill outlit -g
```

- First-party skill index: https://outlit.ai/.well-known/skills/index.json
- First-party Outlit skill: https://outlit.ai/.well-known/skills/outlit/SKILL.md
- First-party Outlit SDK skill: https://outlit.ai/.well-known/skills/outlit-sdk/SKILL.md
- Outlit skill: https://skills.sh/outlitai/skills/outlit
- Outlit SDK skill: https://skills.sh/outlitai/skills/outlit-sdk
- Skills source: https://github.com/OutlitAI/skills

## Source Of Truth

The hosted MCP server is part of Outlit's platform infrastructure. Public metadata should point to:

- Runtime and OAuth metadata on `mcp.outlit.ai`
- Product and agent discovery metadata on `outlit.ai`
- API contract metadata on `docs.outlit.ai`

Do not copy server cards, OpenAPI specs, or OAuth metadata into this repository as independent sources of truth.
