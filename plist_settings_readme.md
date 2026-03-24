# Brave Browser Plist Settings Explanation

This document explains each setting in the `com.brave.Browser.plist` file used by the SlimBrave macOS configuration.

## Core Brave Debloat Settings

### `BraveRewardsDisabled: true`
- **Purpose**: Disables Brave Rewards system (BAT token earning)
- **Effect**: Removes Brave Rewards UI elements, stops background reward calculations
- **Privacy**: Eliminates telemetry related to reward tracking

### `BraveWalletDisabled: true`
- **Purpose**: Disables built-in cryptocurrency wallet functionality
- **Effect**: Removes wallet interface and related crypto features
- **Security**: Reduces attack surface by removing crypto-related code

### `BraveVPNDisabled: true`
- **Purpose**: Disables Brave's built-in VPN service
- **Effect**: Removes VPN integration and promotional elements
- **Privacy**: Prevents potential VPN usage data collection

### `TorDisabled: true`
- **Purpose**: Disables Tor integration in Brave
- **Effect**: Removes Tor window option and related features
- **Security**: Eliminates potential Tor-related vulnerabilities

### `BraveAIChatEnabled: false`
- **Purpose**: Disables Brave's AI chat assistant
- **Effect**: Removes AI chat integration and sidebar elements
- **Privacy**: Prevents AI interaction data collection

## Security & Privacy Hardening

### `AutofillAddressEnabled: false`
- **Purpose**: Disables automatic address form filling
- **Effect**: Prevents Brave from storing/suggesting address information
- **Privacy**: Reduces personal data storage in browser

### `AutofillCreditCardEnabled: false`
- **Purpose**: Disables automatic credit card form filling
- **Effect**: Prevents Brave from storing/suggesting payment information
- **Security**: Eliminates sensitive financial data storage

### `PasswordManagerEnabled: false`
- **Purpose**: Disables built-in password manager
- **Effect**: Prevents Brave from storing passwords
- **Security**: Reduces risk of password database compromise

### `IncognitoModeAvailability: 0`
- **Purpose**: Sets incognito mode availability (0 = Disabled)
- **Effect**: Allows access to private browsing sessions
- **Security**: Allows potential privacy bypass scenarios

### `WebRtcIPHandling: disable_non_proxied_udp`
- **Purpose**: Controls WebRTC IP address exposure
- **Effect**: Prevents WebRTC from revealing real IP address
- **Privacy**: Stops IP leaks through WebRTC connections

### `QuicAllowed: false`
- **Purpose**: Disables QUIC protocol (HTTP/3)
- **Effect**: Forces use of traditional TCP connections
- **Privacy**: Reduces fingerprinting potential through protocol analysis

### `BlockThirdPartyCookies: true`
- **Purpose**: Blocks third-party cookies by default
- **Effect**: Prevents cross-site tracking via cookies
- **Privacy**: Significantly reduces tracking capabilities

## Additional Debloat & Telemetry Blocks

### `DefaultBrowserSettingEnabled: false`
- **Purpose**: Disables default browser prompts
- **Effect**: Stops Brave from asking to be default browser
- **UX**: Reduces nagging notifications

### `DnsOverHttpsMode: off`
- **Purpose**: Disables DNS-over-HTTPS
- **Effect**: Uses system DNS resolution
- **Privacy**: Allows user control of DNS provider

### `FeedbackSurveysEnabled: false`
- **Purpose**: Disables feedback survey prompts
- **Effect**: Removes survey requests and notifications
- **Privacy**: Prevents survey data collection

### `MediaRecommendationsEnabled: false`
- **Purpose**: Disables media content recommendations
- **Effect**: Removes suggested media content features
- **Privacy**: Reduces content-based tracking

### `MetricsReportingEnabled: false`
- **Purpose**: Disables usage metrics reporting to Brave
- **Effect**: Stops telemetry data transmission
- **Privacy**: Eliminates browser usage analytics

### `PromotionsEnabled: false`
- **Purpose**: Disables promotional content and offers
- **Effect**: Removes Brave promotional features
- **UX**: Cleaner browsing experience

### `SearchSuggestEnabled: false`
- **Purpose**: Disables search suggestions in address bar
- **Effect**: No search suggestions while typing
- **Privacy**: Prevents search query transmission to providers

### `ShoppingListEnabled: false`
- **Purpose**: Disables shopping list and price tracking
- **Effect**: Removes shopping-related features
- **Privacy**: Eliminates shopping behavior tracking

### `SafeBrowsingExtendedReportingEnabled: false`
- **Purpose**: Disables extended Safe Browsing reporting
- **Effect**: Stops sending detailed security reports to Google
- **Privacy**: Reduces data shared with third parties

### `SpellcheckEnabled: false`
- **Purpose**: Disables built-in spell checking
- **Effect**: No inline spell checking suggestions
- **Privacy**: Prevents text content analysis

### `TranslateEnabled: false`
- **Purpose**: Disables automatic page translation
- **Effect**: No translation prompts or features
- **Privacy**: Prevents content analysis for translation

### `UrlKeyedAnonymizedDataCollectionEnabled: false`
- **Purpose**: Disables URL-based anonymized data collection
- **Effect**: Stops sharing browsing patterns
- **Privacy**: Eliminates behavioral analytics

### `BraveStatsPingEnabled: false`
- **Purpose**: Disables Brave statistics ping requests
- **Effect**: Prevents periodic usage statistics transmission to Brave
- **Privacy**: Eliminates browser usage telemetry and analytics reporting

## Further Hardening Settings

### `AlwaysOpenPdfExternally: true`
- **Purpose**: Forces PDFs to open in external applications
- **Effect**: Prevents in-browser PDF viewing
- **Security**: Reduces PDF-based attack surface

### `DeveloperToolsAvailability: 1`
- **Purpose**: Sets developer tools availability (1 = Allowed)
- **Effect**: Enables access to browser developer tools
- **Utility**: Allows debugging and inspection

### `DefaultCookiesSetting: 1`
- **Purpose**: Sets default cookie behavior (1 = Allow all cookies)
- **Effect**: Allows all cookies by default, including first and third-party
- **Privacy**: Standard cookie behavior (consider changing to 4 for enhanced privacy)

### `DefaultNotificationsSetting: 2`
- **Purpose**: Sets default notification behavior (2 = Do not allow)
- **Effect**: Blocks website notifications by default
- **Privacy**: Prevents notification-based tracking

## Summary

This configuration creates a minimal, privacy-focused Brave browser by:
- Removing Brave-specific features and integrations
- Disabling data collection and telemetry
- Blocking tracking mechanisms
- Reducing attack surface
- Maintaining essential functionality while maximizing privacy
