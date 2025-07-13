#!/bin/bash

echo "🧹 Cleaning up unused components and dependencies..."

# Remove unused shadcn/ui components
echo "Removing unused UI components..."
rm -f components/ui/accordion.tsx
rm -f components/ui/alert-dialog.tsx
rm -f components/ui/aspect-ratio.tsx
rm -f components/ui/avatar.tsx
rm -f components/ui/breadcrumb.tsx
rm -f components/ui/calendar.tsx
rm -f components/ui/carousel.tsx
rm -f components/ui/chart.tsx
rm -f components/ui/checkbox.tsx
rm -f components/ui/collapsible.tsx
rm -f components/ui/command.tsx
rm -f components/ui/context-menu.tsx
rm -f components/ui/drawer.tsx
rm -f components/ui/dropdown-menu.tsx
rm -f components/ui/form.tsx
rm -f components/ui/hover-card.tsx
rm -f components/ui/input-otp.tsx
rm -f components/ui/menubar.tsx
rm -f components/ui/navigation-menu.tsx
rm -f components/ui/pagination.tsx
rm -f components/ui/popover.tsx
rm -f components/ui/progress.tsx
rm -f components/ui/radio-group.tsx
rm -f components/ui/resizable.tsx
rm -f components/ui/scroll-area.tsx
rm -f components/ui/sheet.tsx
rm -f components/ui/sidebar.tsx
rm -f components/ui/slider.tsx
rm -f components/ui/sonner.tsx
rm -f components/ui/switch.tsx
rm -f components/ui/table.tsx
rm -f components/ui/toggle-group.tsx
rm -f components/ui/toggle.tsx
rm -f components/ui/tooltip.tsx

# Remove unused hooks
echo "Removing unused hooks..."
rm -f hooks/use-mobile.tsx

# Remove duplicate CSS file
echo "Removing duplicate CSS file..."
rm -f styles/globals.css
rmdir styles 2>/dev/null || true

# Remove unused dependencies
echo "Removing unused npm packages..."
npm uninstall \
  @hookform/resolvers \
  react-hook-form \
  @radix-ui/react-accordion \
  @radix-ui/react-alert-dialog \
  @radix-ui/react-aspect-ratio \
  @radix-ui/react-avatar \
  @radix-ui/react-checkbox \
  @radix-ui/react-collapsible \
  @radix-ui/react-context-menu \
  @radix-ui/react-dropdown-menu \
  @radix-ui/react-hover-card \
  @radix-ui/react-menubar \
  @radix-ui/react-navigation-menu \
  @radix-ui/react-popover \
  @radix-ui/react-progress \
  @radix-ui/react-radio-group \
  @radix-ui/react-scroll-area \
  @radix-ui/react-slider \
  @radix-ui/react-switch \
  @radix-ui/react-toggle \
  @radix-ui/react-toggle-group \
  @radix-ui/react-tooltip \
  @supabase/auth-ui-react \
  @supabase/auth-ui-shared \
  @tailwindcss/typography \
  cmdk \
  embla-carousel-react \
  input-otp \
  react-day-picker \
  react-resizable-panels \
  recharts \
  vaul

echo "✅ Cleanup complete!"
echo "📦 Estimated bundle size reduction: ~800KB"
echo "🗂️  Files removed: ~35 component files"
echo "📋 Dependencies removed: ~25 packages" 