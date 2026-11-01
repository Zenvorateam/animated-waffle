# Zenvora Mart — Flutter app

## Sabse pehle: `lib/config.dart` bharo
Saari keys yahin daalni hain:
- `supabaseUrl`, `supabaseAnonKey` (Supabase > Project Settings > API, **anon** key)
- `razorpayKeyId` (sirf Key ID, secret kabhi app me nahi)
- `logoUrl` ya `logoAsset` (logo `assets/logo/logo.png` me rakho)
- `adminEmails` (jo email admin banega) aur `adminPin`
- `membershipPrice` (29), `membershipDays` (30)

## Supabase setup (ek baar)
1. Supabase > SQL Editor me `supabase/setup.sql` paste karke Run karo.
2. Uske andar `insert into public.admins ...` line me apna admin email daalo (config.dart wala same).
3. Authentication > Providers > Email: "Confirm email" band kar do (warna signup ke baad email confirm karna padega).

## Features
- Login / Sign up / Sign out (Supabase email + password), Account page se
- Product page: clean design, Add to cart + **Buy now** (sirf ek product ka order, cart me kuch add nahi hota)
- Zenvora Plus membership: Rs 29/month, har order par free + faster delivery (Razorpay se payment)
- Reviews: sirf wahi customer likh sakta hai jisne product order kiya ho, baaki sirf padh sakte hain (app + Supabase RLS dono jagah)
- Razorpay online payment at checkout (COD bhi hai)
- Notifications: order updates, offers, membership expiry (+ admin ko new order)
- Admin panel: admin email se login -> PIN. Saare customers ke orders, products/banners/coupons/settings sab sync hote hain
- Dark / Light mode (Account > Preferences me toggle)
- Order cancellation requires a reason; optional proof image URL is saved with the order and visible in order details/admin data.

## Google sign-in note
This project currently implements Supabase Email/Password authentication. Google OAuth is not wired into the Flutter UI yet; configure Google provider in Supabase and add the platform redirect/client IDs only after adding the Google sign-in implementation. Never put Google client secrets or Razorpay secret keys in the app.

## Build APK
GitHub par push karo -> Actions > **Build Zenvora APK** > artifact download.
# probable-parakeet
# animated-waffle
# animated-waffle
