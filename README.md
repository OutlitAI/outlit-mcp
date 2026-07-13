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

Customer-intelligence tools use OAuth in remote MCP clients. The MCP OAuth metadata is published at:

- Protected resource metadata: https://mcp.outlit.ai/.well-known/oauth-protected-resource/mcp
- Authorization server metadata: https://clerk.outlit.ai/.well-known/oauth-authorization-server

API-key authenticated MCP clients can also access selected platform configuration tools for agents, automations, signals, destinations, workspace settings, and identity merge suggestions. Those tools require scoped API keys and are documented in the canonical MCP and Platform Actions docs.

## Discovery

- MCP server card: https://mcp.outlit.ai/.well-known/mcp/server-card.json
- MCP registry metadata: https://mcp.outlit.ai/.well-known/mcp/server.json
- Agentic Resource Discovery catalog: https://outlit.ai/.well-known/ai-catalog.json
- API catalog: https://outlit.ai/.well-known/api-catalog
- OpenAPI spec: https://docs.outlit.ai/openapi.json
- Official MCP Registry listing: https://registry.modelcontextprotocol.io/v0.1/servers?search=ai.outlit/outlit
- MCP docs: https://docs.outlit.ai/ai-integrations/mcp
- Platform Actions docs: https://docs.outlit.ai/ai-integrations/platform-actions
- LLM resource index: https://outlit.ai/llms.txt

The official MCP Registry package name is `ai.outlit/outlit`.

## Tools

The hosted server exposes customer context tools for agents, including:

- `outlit_list_customers`
- `outlit_list_users`
- `outlit_list_workspace_users`
- `outlit_get_customer`
- `outlit_get_timeline`
- `outlit_search_customer_context`
- `outlit_list_facts`
- `outlit_get_fact`
- `outlit_get_source`
- `outlit_list_sources`
- `outlit_query`
- `outlit_schema`
- `outlit_send_notification`

The server also exposes read-only SQL views for `activity`, `customers`, `users`, and `revenue`.

## Skills

Install the official Outlit skills through the Outlit CLI:

```bash
outlit setup skills
```

Or install directly from the public skills repository:

```bash
npx -y skills add https://github.com/OutlitAI/outlit-agent-skills -g
```

- First-party skill index: https://outlit.ai/.well-known/skills/index.json
- First-party Outlit skill: https://outlit.ai/.well-known/skills/outlit/SKILL.md
- First-party Outlit SDK skill: https://outlit.ai/.well-known/skills/outlit-sdk/SKILL.md
- Outlit skill: https://skills.sh/outlitai/outlit-agent-skills/outlit
- Outlit SDK skill: https://skills.sh/outlitai/outlit-agent-skills/outlit-sdk
- Skills source: https://github.com/OutlitAI/outlit-agent-skills

## Source Of Truth

The hosted MCP server is part of Outlit's platform infrastructure. Public metadata should point to:

- Runtime and OAuth metadata on `mcp.outlit.ai`
- Product and agent discovery metadata on `outlit.ai`
- API contract metadata on `docs.outlit.ai`

Do not copy server cards, OpenAPI specs, or OAuth metadata into this repository as independent sources of truth.
