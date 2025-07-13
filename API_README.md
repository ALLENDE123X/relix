# Changelog Generation API

## Overview
The `/api/generate` endpoint creates AI-powered changelogs from Git commit data and stores them in a Supabase database.

## Endpoint
```
POST /api/generate
```

## Request Schema
```json
{
  "repo": "string (required)",     // e.g., "vercel/next.js"
  "branch": "string (optional)",   // defaults to "main"
  "mode": "date|sha|tag",          // required
  "start": "string (optional)",    // required for date mode
  "end": "string (optional)",      // required for date mode  
  "base": "string (optional)",     // required for sha/tag modes
  "head": "string (optional)"      // required for sha/tag modes
}
```

## Database Schema
The API interacts with the `release_slices` table:

```sql
CREATE TABLE public.release_slices (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    published_at TIMESTAMPTZ DEFAULT now() NOT NULL,
    repo TEXT NOT NULL,
    branch TEXT DEFAULT 'main' NOT NULL,
    mode TEXT DEFAULT 'date' NOT NULL CHECK (mode IN ('date','sha','tag')),
    start_date TIMESTAMPTZ,
    end_date TIMESTAMPTZ,
    base_sha TEXT,
    head_sha TEXT,
    base_tag TEXT,
    head_tag TEXT,
    markdown TEXT NOT NULL,
    owner_id UUID
);
```

## Response Examples

### Success (201 Created)
```json
{
  "id": "uuid",
  "repo": "vercel/next.js",
  "branch": "main",
  "mode": "date",
  "markdown": "# Changelog\n\n## Features\n- Added new feature...",
  "published_at": "2024-01-01T00:00:00Z",
  "start_date": "2024-01-01T00:00:00Z",
  "end_date": "2024-01-07T00:00:00Z"
}
```

### Error Responses
- `400` - Invalid request data or missing required fields
- `404` - Repository not found or not accessible
- `500` - Server configuration error or database failure
- `502` - GitHub API error
- `503` - AI service unavailable

## Environment Variables Required
```env
GITHUB_PAT=your_github_personal_access_token
OPENAI_API_KEY=your_openai_api_key
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
SUPABASE_SERVICE_ROLE_KEY=your_supabase_service_role_key
```

## Usage Examples

### Date Mode
```bash
curl -X POST http://localhost:3000/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "repo": "vercel/next.js",
    "branch": "main",
    "mode": "date",
    "start": "2024-01-01",
    "end": "2024-01-07"
  }'
```

### SHA Mode
```bash
curl -X POST http://localhost:3000/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "repo": "vercel/next.js",
    "branch": "main", 
    "mode": "sha",
    "base": "abc123",
    "head": "def456"
  }'
```

### Tag Mode
```bash
curl -X POST http://localhost:3000/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "repo": "vercel/next.js",
    "branch": "main",
    "mode": "tag", 
    "base": "v1.0.0",
    "head": "v1.1.0"
  }'
```

## Features
- Input validation with Zod
- Environment variable validation
- Overlap detection (prevents duplicate slices)
- GitHub API integration with pagination
- OpenAI integration for changelog generation
- Comprehensive error handling
- Support for all three modes (date, sha, tag)
- Exported helper functions for testing 