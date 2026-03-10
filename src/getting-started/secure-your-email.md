# Secure your email

Email is fundamentally broken from a security perspective. Despite what providers claim, true email security is practically impossible in today's ecosystem. Here's what you need to understand.

## The Fundamental Problem with Email

Email was never designed for security. It's a series of unencrypted postcards passed between servers, each of which can read your messages.

### How Email Actually Works

1. **Sender's Server**: Your email provider stores and processes your message  
2. **Multiple Hops**: Message travels through multiple mail servers across the internet  
3. **Recipient's Server**: Destination provider processes and stores the message  
4. **Every Server Can Read**: Each hop can read the unencrypted content  

**The Reality**: Every server your email passes through can potentially read, store, and analyze your message content.  

## Provider Encryption Claims Are Misleading

When email providers say they "encrypt your emails," they typically mean:

- **Encryption in Transit**: HTTPS between your device and their server  
- **Encryption at Rest**: SSL/TLS on their hard drives  
- **Storage Encryption**: Encrypted database storage  

**What they DON'T mean**:  
- **End-to-end encryption**: They can't read your emails  
- **Message-level protection**: Only you and recipient can read content  
- **No internal access**: Their employees can't access your messages  

The provider can still read everything you send and receive.

## What About Security Features?

### DKIM, SPF, and DMARC

These are authentication mechanisms, not encryption:

- **SPF (Sender Policy Framework)**: Verifies sending server is authorized  
- **DKIM (DomainKeys Identified Mail)**: Validates message wasn't tampered with  
- **DMARC**: Combines SPF and DKIM policies  

**What they actually do**: Prevent email spoofing and domain abuse    
**What they don't do**: Encrypt message content or provide privacy    

### PGP: The Only Real Solution (But Problematic)

**Pretty Good Privacy (PGP)** provides actual message-level encryption, but has major adoption problems:

**Why PGP Fails in Practice:**
- **Recipient must also use PGP**: Most people don't    
- **Key management is complex**: Non-technical users struggle    
- **No integration with web interfaces**: Most email providers don't support it    
- **Social friction**: Asking every contact to use PGP is impractical    
- **Metadata exposure**: Headers, timing, and recipients remain visible    

## The Realistic Email Strategy

### Email is Dead for Security

Accept that email is **not** secure. Treat it as:

- **Public postcard system**: Assume anyone can read it  
- **Front door inbox**: A place to receive initial contact  
- **Notification system**: For alerts and non-sensitive communications  
- **Legacy protocol**: Necessary but inherently flawed  

### What Email Should Handle

**Safe to Use Email For:**
- Newsletter subscriptions
- Receipt confirmations
- Public announcements
- General business inquiries
- Non-sensitive coordination

**Never Use Email For:**
- Passwords or sensitive credentials
- Financial information
- Personal secrets or confessions
- Confidential business details
- Medical information
- Political or activist communications

### Practical Security Measures

Since email is fundamentally insecure, focus on these realistic protections:

**Server Security (Provider Level):**
- Choose providers with better privacy policies (ProtonMail, Tutanota)
- Enable all available authentication (2FA, U2F)
- Use custom domain when possible (more control)

**Message Security (What Actually Matters):**
- Move sensitive conversations to encrypted messaging apps
- Use password-protected document sharing for files
- Provide passwords through separate channels (phone, Signal)
- Never send credentials via email

**Authentication Methods:**
- Enable SPF, DKIM, and DMARC for your own domain
- This prevents spoofing but doesn't provide confidentiality

## The Modern Approach: Email + Secure Channels

Think of email as a **directory service**, not a secure communication channel.

### Your Communication Strategy

1. **Email Initial Contact**: Share your preferred secure messaging method  
2. **Move to Secure Channel**: Continue conversation there  
3. **Use Email For**: Notifications, receipts, non-sensitive coordination  
4. **Secure Apps For**: Real conversations, sensitive information  

### Recommended Secure Alternatives

**For Personal Conversations:**  
- **Signal**: End-to-end encrypted, open source    
- **WhatsApp**: E2E encrypted (but owned by Meta)    
- **Threema**: Privacy-focused, paid but secure    

**For Business Communications:**  
- **Element/Matrix**: Self-hostable, federated    
- **Wire**: E2E encrypted, business-focused    
- **Session**: Decentralized, metadata-resistant    

**For File Sharing:**  
- **OnionShare**: Secure, anonymous file sharing    
- **Nextcloud**: Self-hosted file storage    
- **Encrypted containers**: VeraCrypt archives with separate password delivery    

## Email Provider Reality Check

### "Secure" Email Providers

Even "privacy-focused" providers like ProtonMail have limitations:

- **They can read unencrypted emails to non-ProtonMail users**
- **Metadata is still visible** (who emails whom, when, how often)
- **Government subpoenas still work** (Swiss authorities for ProtonMail)
- **They can be compelled to log your activity**

### The Truth About Webmail

Any web-based email service:  
- **Requires JavaScript**: Potential for client-side attacks    
- **Tracks your usage**: Analytics and behavior tracking    
- **Stores your contacts**: Builds social graphs    
- **Logs your IP**: Location and access patterns    

## When You Must Use Email

### Minimizing Damage

If email is unavoidable (most of us still need it):

**Basic Hygiene:**  
- Use a unique address for each service  
- Forward important emails to secure channels  
- Regularly clean your inbox  
- Never reply to spam or phishing attempts  

**Provider Selection:**  
- Consider privacy-focused providers  
- Use your own domain when possible  
- Enable all available security features  
- Understand their logging policies  

**Message Practices:**  
- Assume every email will be read by third parties  
- Never include sensitive credentials  
- Use throwaway accounts for public-facing purposes  
- Create rules to automatically handle spam  

## The Future of Digital Communication

Email persists because:  
- **Universal adoption**: Everyone has an email address    
- **Business requirement**: Many services require email for registration    
- **Legacy systems**: Business processes built around email    
- **Inertia**: Network effects make alternatives difficult    

But the future is moving toward:  
- **End-to-end encrypted messaging**: Default for personal communications    
- **Decentralized protocols**: No single point of control    
- **Metadata protection**: Hiding communication patterns    
- **User-controlled encryption**: No trust required in providers    

## Conclusion

Email security is an oxymoron. The protocol was designed for academic messaging in a trusted environment, not modern privacy needs.

**Accept the reality**: Email is insecure, and there's no way to fix it fundamentally.  
**Adopt the strategy**: Use email as a necessary evil for initial contact, move sensitive conversations to secure channels.  
**Educate others**: Help friends and family understand email's limitations.  

The most secure email policy is understanding that email isn't secure at all, and planning your digital communications accordingly.