import { Suspense } from "react"
import type { Metadata } from "next"
import { Inter } from "next/font/google"
import "./globals.css"
import { ThemeProvider } from "@/components/theme-provider"
import { Toaster } from "@/components/ui/sonner"
import { PHProvider, PostHogPageview } from "@/components/posthog-provider"

const inter = Inter({ subsets: ["latin"] })

export const metadata: Metadata = {
  title: "Changelog Console",
  description: "AI-powered changelog generator for developers"
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <PHProvider>
        <body className={inter.className}>
          <ThemeProvider
            attribute="class"
            defaultTheme="system"
            enableSystem
            disableTransitionOnChange
          >
            <Suspense>
              <PostHogPageview />
            </Suspense>
            {children}
            <Toaster />
          </ThemeProvider>
        </body>
      </PHProvider>
    </html>
  );
}
