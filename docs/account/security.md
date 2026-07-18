---
title: Sign-in and security
description: Passwords, Google sign-in, passkeys, known devices, and personal access tokens.
updated_at: 2026-07-19T02:04:39+07:00
---

# Sign-in and security

TodoPro gives you several ways to sign in and some tools to keep an eye on your account.
Most of this lives in **Settings → Security**.

Related pages: [Your account](index.md) · [Import and export](import-export.md) · [Create an account](../getting-started/create-account.md)

## Passwords

You can sign up and sign in with an email address and a password.

### Resetting a forgotten password

1. On the sign-in screen, choose **Forgot password**.
2. Enter the email address on your account.
3. Open the reset email and follow the link to set a new password.

The Android app has the same forgot-password flow.

!!! tip
    If the email does not arrive, check your spam folder and confirm you used the address you signed up with.
    See [Troubleshooting](../troubleshooting.md).

## Sign in with Google

You can use **Sign in with Google** instead of a password, on both the web app and the Android app.
Choose the Google account you want and TodoPro signs you in.

!!! warning
    Google sign-in gets you into the account tied to *that* Google address.
    If you originally signed up with a different email, signing in with Google can land you in an empty account.
    Use the email and password you signed up with, or reset your password.

## Passkeys

Passkeys let you sign in without a password at all, using your device's own unlock — fingerprint, face, or device PIN.

### Adding a passkey

1. Sign in as usual.
2. Go to **Settings → Security**.
3. Choose to add a passkey.
4. Confirm with your device when it prompts you.

### Signing in with a passkey

On the sign-in screen, choose the passkey option.
You do not need to type your email first — TodoPro works out who you are from the passkey itself.

### Managing passkeys

**Settings → Security** lists the passkeys on your account.
You can remove any of them from that list.

!!! note
    A passkey is tied to the device or password manager where you created it.
    If you pick up a new laptop or phone, add a passkey there too — or sign in with your password or Google first and then add one.

!!! tip
    Keep at least one other way in, such as your password, so losing a device does not lock you out.

## Sign-in activity and known devices

TodoPro keeps track of the devices that have signed in to your account.

- Review your **sign-in activity** and the list of known devices in **Settings → Security**.
- **Remove a device** you no longer use or do not recognise.
- **Sign out of all devices** at once if you want a clean slate.

### New-device alert emails

When a sign-in happens from a device TodoPro has not seen before, you get an email about it.

That email includes a one-click **"This wasn't me"** action.
Choosing it secures your account straight away, so use it if the sign-in was not you.

!!! warning
    If you get a new-device email you cannot explain, use **"This wasn't me"** in the email, then change your password and review your known devices and personal access tokens.

## Personal access tokens

Personal access tokens let scripts, the [CLI](../apps/cli.md), and your own tools act on your account without a password.

### Creating a token

1. Go to **Settings** and open the **API tokens** section.
2. Create a token and give it a name that says what it is for, such as `laptop-cli` or `weekly-report-script`.
3. Copy the token when it is shown.

### Revoking a token

The same section lists your tokens.
Revoke any token at any time — anything using it stops having access immediately.

!!! warning "Treat tokens like passwords"
    A personal access token can do what you can do.
    Never paste one into a shared document, a chat message, a screenshot, or a public code repository.
    If a token might have leaked, revoke it and create a new one.

!!! tip
    Create a separate named token per script or machine.
    Then you can revoke just the one that is affected, instead of breaking everything at once.

## If you think your account is at risk

1. Use **"This wasn't me"** in any suspicious new-device email.
2. Change your password, or add a passkey.
3. **Sign out of all devices** in **Settings → Security**.
4. Remove any known devices you do not recognise.
5. Revoke personal access tokens you did not create.
