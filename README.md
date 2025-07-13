# Relix - AI-Powered Changelog Generator

**An intelligent changelog generator that transforms Git commit history into professional, readable changelogs using AI.**

**Quick Access**: When viewing any GitHub repository, simply add `whatchanged` before `github.com` in the URL to instantly generate a changelog for that repo.

You can visit the website here: whatchangedgithub.com

[Repository](https://github.com/ALLENDE123X/relix)

## Demo Videos

**Quick Overview** (< 1 minute): [Watch Short Demo](https://www.loom.com/share/5e013c778cda4793bbb2d08a1308f87b?sid=51e4aac6-8b6b-41e5-8efc-ecc2169f1ebd)

**Complete Walkthrough** (9 minutes): [Watch Full Demo](https://www.loom.com/share/decd0027950d4467b49cdf27af042259?sid=dd11fb23-0ee4-4af4-8bcd-a4f0029b4294)

## Table of Contents

**Core Features:**
- [Demo Videos](#-demo-videos)
- [Project Overview](#project-overview)
- [Live Demo](#live-demo)
- [User-Centered Product Design](#user-centered-product-design)
- [Design Decisions & Tech Stack](#design-decisions--tech-stack)
- [Engineering Practices](#engineering-practices)
- [Key Challenges & Solutions](#key-challenges--solutions)

**Technical Deep Dive:**
- [Technical Architecture](#technical-architecture)
- [AI Integration Details](#ai-integration-details)
- [How to Use](#how-to-use)
- [Installation & Setup](#installation--setup)
- [Performance Optimizations](#performance-optimizations)
- [Security & Best Practices](#security--best-practices)
- [Analytics & Monitoring](#analytics--monitoring)
- [Testing](#testing)
- [Project Structure](#project-structure)
- [Deployment](#deployment)
- [Future Enhancements](#future-enhancements)

## Project Overview

Relix is an AI-powered changelog generator that addresses the common pain point developers face when manually creating changelogs by automating the process through intelligent commit analysis and natural language generation.

### The Problem I Solve

Developers and teams frequently need to:
1. **Manually review days/weeks of commits** to understand what changed
2. **Summarize technical changes** into user-friendly language
3. **Create consistent, professional changelogs** for releases

This process is time-consuming, error-prone, and often results in incomplete or poorly formatted changelogs.

### My Solution

Relix automates this entire workflow by:
- **Fetching commit data** from any public GitHub repository
- **Analyzing commit messages** using advanced AI models
- **Generating professional changelogs** with proper categorization and formatting
- **Preventing duplicate entries** through intelligent overlap detection
- **Providing multiple input methods** (date ranges, tags, commit SHAs)

## Live Demo

**Try it now:** [https://whatchangedgithub.com](https://whatchangedgithub.com)

### Quick Start Demo:
1. Visit the [console page](https://whatchangedgithub.com/console)
2. Enter a repository URL (e.g., `https://github.com/facebook/react`)
3. Select a date range or tag range
4. Click "Generate Draft" to see AI-generated changelog
5. Edit and publish your changelog

### Pro Tip:
When browsing any GitHub repository, simply change `github.com` to `whatchangedgithub.com` in your browser's address bar to instantly access the changelog generator for that specific repo.

### Production Security Note:
This setup is purely for demo purposes. In a true production environment, only authorized contributors to public repositories would be allowed to generate changelogs. This could be implemented by offering a GitHub SSO option to verify contributor permissions before allowing changelog generation.

## User-Centered Product Design

### Developer-First Experience Design

As a tool built for developers, every design decision prioritized the developer experience and workflow efficiency:

#### **Intuitive Input Methods**
- **Multiple Entry Points**: Developers can input repositories via URL, which matches their daily workflow of copying GitHub URLs
- **Flexible Range Selection**: Three distinct modes (date, tag, SHA) accommodate different release management practices
- **Smart Defaults**: Automatically detects main/master branch and suggests reasonable date ranges

#### **Cognitive Load Reduction**
- **Single-Page Workflow**: Entire changelog creation process happens on one page to minimize context switching
- **Progressive Disclosure**: Advanced options are hidden until needed, keeping the interface clean
- **Visual Hierarchy**: Clear distinction between input, generation, and editing phases

#### **Developer Workflow Integration**
- **Markdown-First**: Outputs in markdown format that developers already use for documentation
- **Commit Traceability**: Includes commit SHAs so developers can trace back to specific changes
- **Branch-Aware**: Understands Git workflows and branch-based development

#### **Error Prevention & Recovery**
- **Overlap Detection**: Prevents duplicate work by checking for existing changelogs in the same commit range
- **Validation Feedback**: Real-time validation prevents wasted generation attempts
- **Graceful Degradation**: Clear error messages with actionable next steps

#### **Efficiency Optimizations**
- **Keyboard Shortcuts**: Power users can generate (Cmd+Enter) and publish (Cmd+Shift+Enter) without mouse interaction
- **Auto-Save Drafts**: Preserves work during editing sessions
- **Instant Preview**: Live markdown rendering eliminates the edit-preview cycle

#### **Accessibility & Inclusion**
- **Screen Reader Support**: Full ARIA labeling for developers using assistive technologies
- **Keyboard Navigation**: Complete functionality available without mouse interaction
- **High Contrast Modes**: Dark and light themes with WCAG-compliant contrast ratios
- **Responsive Design**: Mobile-friendly interface that dynamically adjusts layout based on screen dimensions in real-time

### User Research Insights Applied

#### **Pain Point: Manual Changelog Creation**
- **Problem**: Developers spend hours manually reviewing commits and writing changelogs
- **Solution**: AI-powered automation that understands technical context and generates professional summaries

#### **Pain Point: Inconsistent Formatting**
- **Problem**: Different team members create changelogs with varying styles and completeness
- **Solution**: Standardized categorization (Features, Bug Fixes, Internal Changes) with consistent formatting

#### **Pain Point: Missing Context**
- **Problem**: Changelogs often lack sufficient detail for users to understand impact
- **Solution**: Intelligent commit grouping and technical detail preservation while maintaining readability

#### **Pain Point: Duplicate Work**
- **Problem**: Teams accidentally create overlapping changelogs or miss important changes
- **Solution**: Database-backed overlap detection and comprehensive commit range validation

## Design Decisions & Tech Stack

### Technology Stack Choices
I chose modern, production-ready technologies that work well together, with particular attention to alignment with Greptile's tech stack to demonstrate familiarity with their ecosystem:

- **React/TypeScript**: Type-safe frontend development with excellent developer experience
- **Supabase**: PostgreSQL database with real-time capabilities and excellent tooling
- **OpenAI**: Industry-leading AI models for natural language generation
- **Helicone**: Production-grade LLM observability and monitoring
- **PostHog**: Comprehensive product analytics and user behavior tracking

This stack provides a solid foundation for building scalable, maintainable applications while leveraging best-in-class tools for AI integration and user analytics. The alignment with Greptile's technology choices also showcases my ability to work effectively within their existing development ecosystem.

### Development Tools & Workflow

#### **AI-Assisted Development**
- **Cursor**: Used as the primary IDE with AI-powered code suggestions that were reviewed and approved by the developer
- **v0.dev**: Utilized to generate initial frontend components and layouts, which were then heavily refined and customized to match the specific requirements and design system

#### **Modern Development Workflow**
The development process leveraged AI tools to accelerate initial development while maintaining high code quality through human oversight:

1. **Initial Prototyping**: v0.dev generated foundational UI components and page layouts
2. **Code Enhancement**: Cursor provided intelligent code suggestions during development
3. **Human Review**: All AI-generated code was carefully reviewed, tested, and refined
4. **Custom Implementation**: Significant customization and optimization beyond initial AI outputs

This hybrid approach combined the speed of AI-assisted development with the quality assurance of human expertise, resulting in a production-ready application that meets professional standards.

### Why Next.js?
- **Full-Stack Capabilities**: API routes for backend functionality
- **Modern React**: Latest React features with server components
- **Performance**: Built-in optimizations and caching
- **Deployment**: Seamless Vercel integration

### Why GPT-4o-mini?
- **Cost-Effective**: Significantly cheaper than GPT-4
- **Quality**: Sufficient for technical summarization tasks
- **Speed**: Faster response times for better UX
- **Reliability**: Consistent output format

### Why Supabase?
- **PostgreSQL**: Robust, scalable database
- **Real-time**: Built-in real-time subscriptions
- **Authentication**: Ready-to-use auth system
- **Developer Experience**: Excellent tooling and documentation

### UI/UX Decisions
- **Minimal Interface**: Focus on core functionality without clutter
- **Mobile-First Approach**: Responsive design for all device sizes
- **Performance-Focused**: Optimized loading states and error handling

## Engineering Practices

### Frontend Engineering Excellence

#### **Type Safety & Code Quality**
- **Strict TypeScript**: Comprehensive type definitions with no `any` types
- **Zod Schema Validation**: Runtime type checking for all API interactions
- **ESLint + Prettier**: Consistent code formatting and linting rules
- **Component Architecture**: Reusable, composable components with clear prop interfaces

#### **Performance & User Experience**
- **React 19 Features**: Latest concurrent features for optimal rendering
- **Suspense Boundaries**: Proper loading states and error boundaries
- **Client-Side Optimization**: Efficient state management and memoization
- **Responsive Design**: Mobile-first approach with Tailwind CSS utilities

#### **Accessibility & Standards**
- **Comprehensive A11y**: Full accessibility implementation
- **Semantic HTML**: Proper HTML structure and landmarks
- **WCAG Compliance**: Color contrast and interaction standards

#### **Error Handling & Resilience**
- **Graceful Degradation**: Fallback states for all error conditions
- **User Feedback**: Clear error messages and loading states
- **Network Resilience**: Retry logic and offline state handling
- **Input Validation**: Client-side validation with server-side verification

### Backend Engineering Excellence

#### **API Design & Architecture**
- **RESTful Principles**: Consistent API design patterns
- **Input Validation**: Comprehensive Zod schema validation for all endpoints
- **Error Handling**: Structured error responses with proper HTTP status codes
- **Environment Validation**: Startup-time validation of all required configuration

#### **Database Design & Integrity**
- **Normalized Schema**: Efficient database design with proper relationships
- **Overlap Detection**: Complex logic to prevent duplicate changelog entries
- **Transaction Safety**: Atomic operations for data consistency
- **Index Optimization**: Strategic database indexes for query performance

#### **Security & Best Practices**
- **Environment Variables**: Secure handling of sensitive configuration
- **Input Sanitization**: Protection against injection attacks
- **Rate Limiting**: GitHub API rate limit respect and management
- **CORS Configuration**: Proper cross-origin resource sharing setup

#### **Monitoring & Observability**
- **Structured Logging**: Comprehensive error logging and debugging
- **Performance Metrics**: Request timing and success rate tracking
- **AI Usage Monitoring**: Helicone integration for LLM observability
- **User Analytics**: PostHog integration for product insights

#### **Scalability & Performance**
- **Efficient Queries**: Optimized database queries with proper indexing
- **Caching Strategies**: Strategic caching for GitHub API responses
- **Connection Pooling**: Efficient database connection management
- **Background Processing**: Async operations for long-running tasks

## Key Challenges & Solutions

### Challenge 1: Server-Side Rendering with Client-Side Analytics
**Problem**: PostHog and other client-side libraries caused hydration mismatches and module loading errors.

**Solution**: 
- Implemented client-side state management with `useState` and `useEffect`
- Added proper client-side checks (`typeof window !== 'undefined'`)
- Created wrapper components that only render on client-side
- Used Suspense boundaries for graceful loading states

### Challenge 2: AI Prompt Engineering for Technical Accuracy
**Problem**: Initial AI-generated changelogs were too marketing-focused and lacked technical precision.

**Solution**:
- Developed sophisticated prompt engineering with specific instructions
- Implemented temperature control (0.3) for consistent, factual output
- Added commit SHA traceability for transparency
- Created categorization system (Features, Bug Fixes, Internal Changes)

### Challenge 3: Commit Overlap Detection
**Problem**: Preventing duplicate changelog entries across different date ranges and modes.

**Solution**:
- Designed complex overlap detection algorithm using commit SHA arrays
- Implemented database-level checks before AI generation
- Created clear error messages for conflicting ranges
- Added SHA range conversion for consistent comparison

### Challenge 4: GitHub API Rate Limiting
**Problem**: GitHub API has strict rate limits that could break the application.

**Solution**:
- Implemented efficient pagination for large commit histories
- Added request batching and caching strategies
- Created graceful error handling for rate limit scenarios
- Used personal access tokens for higher rate limits

### Challenge 5: Real-time Markdown Editing with Preview
**Problem**: Providing smooth editing experience with live preview without performance issues.

**Solution**:
- Implemented debounced markdown parsing
- Used React.memo for expensive markdown rendering
- Created efficient state management for large text content
- Added syntax highlighting without blocking UI

### Challenge 6: Multi-Mode Input Validation
**Problem**: Supporting three different input modes (date, tag, SHA) with proper validation.

**Solution**:
- Created comprehensive Zod schemas for each mode
- Implemented dynamic form validation based on selected mode
- Added GitHub API integration for tag/branch validation
- Created unified error handling across all modes

## Technical Architecture

### Tech Stack
- **Frontend**: Next.js 15.2.4, React 19, TypeScript
- **Styling**: Tailwind CSS, shadcn/ui components
- **Backend**: Next.js API routes
- **Database**: Supabase (PostgreSQL)
- **AI Integration**: OpenAI GPT-4o-mini
- **Analytics**: PostHog for user tracking
- **Observability**: Helicone for LLM monitoring
- **Deployment**: Vercel
- **Version Control**: Git/GitHub

### Key Features

#### AI-Powered Generation
- **Advanced Prompt Engineering**: Carefully crafted prompts for technical accuracy
- **Context-Aware Summarization**: Groups related commits intelligently
- **Professional Formatting**: Generates markdown with proper categorization
- **Commit Traceability**: Includes commit SHAs for reference

#### Multiple Input Methods
- **Date Range Mode**: Generate changelogs between specific dates
- **Tag Mode**: Compare between Git tags (e.g., v1.0.0 to v1.1.0)
- **SHA Mode**: Compare between specific commit hashes
- **Branch Support**: Works with any branch, not just main/master

#### Smart Overlap Detection
- **Prevents Duplicates**: Checks if commits are already in existing changelogs
- **Database Integrity**: Maintains clean, non-overlapping changelog entries
- **Conflict Resolution**: Clear error messages for overlapping ranges

#### Modern User Experience
- **Responsive Design**: Works seamlessly on desktop and mobile
- **Dark/Light Mode**: Theme toggle with system preference detection
- **Real-time Editing**: Live preview of markdown rendering
- **Power-User Features**: Keyboard shortcuts and efficiency optimizations

## Project Structure

```
relix/
├── app/                          # Next.js 13+ app directory
│   ├── api/                      # API routes
│   │   ├── generate/             # Changelog generation endpoint
│   │   ├── releases/             # CRUD operations for changelogs
│   │   ├── repos/                # Repository management
│   │   └── github/               # GitHub API integration
│   ├── console/                  # Changelog creation interface
│   ├── [...slug]/                # Dynamic changelog display
│   ├── layout.tsx                # Root layout with providers
│   └── page.tsx                  # Homepage with repository list
├── components/                   # React components
│   ├── ui/                       # shadcn/ui components
│   ├── theme-provider.tsx        # Theme management
│   └── posthog-provider.tsx      # Analytics integration
├── lib/                          # Utility functions
├── hooks/                        # Custom React hooks
├── public/                       # Static assets
└── styles/                       # Global styles
```

## Installation & Setup

### Prerequisites
- Node.js 18+ 
- npm or pnpm
- Git

### 1. Clone the Repository
```bash
git clone https://github.com/ALLENDE123X/relix.git
cd relix
```

### 2. Install Dependencies
```bash
npm install
# or
pnpm install
```

### 3. Environment Configuration
Create a `.env.local` file in the project root:

```env
# GitHub API (Required)
GITHUB_PAT=your_github_personal_access_token

# OpenAI API (Required)
OPENAI_API_KEY=your_openai_api_key

# Supabase Database (Required)
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
SUPABASE_SERVICE_ROLE_KEY=your_supabase_service_role_key

# PostHog Analytics (Optional)
NEXT_PUBLIC_POSTHOG_KEY=your_posthog_project_key
NEXT_PUBLIC_POSTHOG_HOST=https://us.posthog.com

# Helicone LLM Observability (Optional)
HELICONE_API_KEY=your_helicone_api_key
```

### 4. Database Setup
The application uses Supabase with the following schema:

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
    commits_list TEXT[],
    owner_id UUID
);
```

### 5. Run the Development Server
```bash
npm run dev
# or
pnpm dev
```

Visit `http://localhost:3000` to see the application running.

## How to Use

### Basic Workflow

1. **Navigate to Console**: Go to `/console` or click "Console" in the navigation
2. **Enter Repository**: Paste any public GitHub repository URL
3. **Select Range Type**: Choose between Date, Tag, or SHA modes
4. **Configure Range**: Set your desired commit range
5. **Generate**: Click "Generate Draft" to create AI-powered changelog
6. **Review & Edit**: Review the generated markdown and make edits
7. **Publish**: Save the changelog to the database

### Advanced Features

#### Branch Selection
- Automatic branch detection from repository
- Dropdown shows all available branches
- Defaults to main/master branch

#### Overlap Detection
- Prevents duplicate changelog entries
- Checks commit overlap before generation
- Clear error messages for conflicts

#### Markdown Editing
- Live preview of rendered markdown
- Full editing capabilities
- Syntax highlighting

## AI Integration Details

### Prompt Engineering
The AI system uses carefully crafted prompts to ensure:
- **Technical Accuracy**: Proper understanding of commit messages
- **Professional Tone**: Objective, formal language suitable for releases
- **Proper Categorization**: Automatic grouping into Features, Bug Fixes, etc.
- **Commit Traceability**: Includes commit SHAs for reference

### Model Configuration
- **Model**: GPT-4o-mini for cost-effective, high-quality generation
- **Temperature**: 0.3 for consistent, factual output
- **Max Tokens**: 2000 for comprehensive changelogs
- **Context Window**: Optimized for large commit histories

## Analytics & Monitoring

### PostHog Integration
- **Pageview Tracking**: Automatic page visit analytics
- **User Behavior**: Understanding how users interact with the tool
- **Performance Metrics**: Load times and user engagement

### Helicone Observability
- **LLM Request Monitoring**: Track all OpenAI API calls
- **Cost Analysis**: Monitor AI usage and expenses
- **Performance Metrics**: Latency and success rates
- **Error Tracking**: Detailed error logs and debugging

## Security & Best Practices

### Environment Variables
- **Public Variables**: Only PostHog keys are client-side accessible
- **Private Keys**: API keys are server-side only
- **Validation**: Comprehensive environment variable validation

### Database Security
- **Row Level Security**: Supabase RLS policies
- **Service Role**: Secure database access patterns
- **Input Validation**: Zod schema validation for all inputs

### Rate Limiting
- **GitHub API**: Respects GitHub's rate limits
- **OpenAI API**: Efficient token usage and error handling
- **Database**: Optimized queries and connection pooling

## Deployment

### Vercel Deployment (Recommended)
1. **Connect Repository**: Link your GitHub repository to Vercel
2. **Configure Environment**: Add all environment variables in Vercel dashboard
3. **Deploy**: Automatic deployment on every push to main branch

### Environment Variables in Production
Ensure all required environment variables are set in your deployment platform:
- `GITHUB_PAT`
- `OPENAI_API_KEY`
- `NEXT_PUBLIC_SUPABASE_URL`
- `SUPABASE_SERVICE_ROLE_KEY`
- `NEXT_PUBLIC_POSTHOG_KEY` (optional)
- `NEXT_PUBLIC_POSTHOG_HOST` (optional)
- `HELICONE_API_KEY` (optional)

## Testing

### Manual Testing
```bash
# Test API endpoints
node test-api.js

# Test specific repository
curl -X POST http://localhost:3000/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "repo": "facebook/react",
    "branch": "main",
    "mode": "date",
    "start": "2024-01-01",
    "end": "2024-01-07"
  }'
```

### Quality Assurance
- **Error Handling**: Comprehensive error messages and fallbacks
- **Input Validation**: Zod schema validation for all user inputs
- **Edge Cases**: Handling of empty repositories, invalid ranges, etc.

## Performance Optimizations

### Frontend
- **Code Splitting**: Automatic route-based code splitting
- **Image Optimization**: Next.js Image component
- **Caching**: Efficient caching strategies
- **Bundle Size**: Optimized dependencies and tree shaking

### Backend
- **Database Indexing**: Optimized queries with proper indexes
- **API Caching**: Response caching where appropriate
- **Error Handling**: Graceful error handling and recovery
- **Rate Limiting**: Efficient API usage patterns

## Future Enhancements

### Planned Features
- **Private Repository Support**: GitHub App integration
- **Custom Templates**: User-defined changelog formats
- **Slack/Discord Integration**: Automated changelog posting
- **Bulk Generation**: Process multiple repositories
- **Advanced Analytics**: Detailed usage insights

### Technical Improvements
- **Caching Layer**: Redis for improved performance
- **Background Jobs**: Queue system for long-running tasks
- **API Versioning**: Structured API evolution
- **Testing Suite**: Comprehensive test coverage

---

*Relix demonstrates modern web development practices, AI integration, database design, and user experience design. It showcases the ability to build production-ready applications that solve real developer problems.* 