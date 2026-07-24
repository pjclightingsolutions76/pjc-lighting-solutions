import "./globals.css";

export const metadata = {
  title: "PJC Lighting Solutions | Permanent Track Lighting Arizona",
  description:
    "Professional permanent track lighting installation throughout Arizona. App-controlled, low-profile lighting backed by a 20-year warranty.",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}