// =====================================================================
//  ZENVORA MART  -  CONFIG FILE
//  Saari keys / logo / admin yahin add karo. Baaki code ko chhedna nahi hai.
// =====================================================================

class AppConfig {
  // ---------------------------------------------------------------- APP
  static const String appName = 'Zenvora Mart';

  // ---------------------------------------------------------------- LOGO
  // Option 1: internet link (https://...png)      -> logoUrl me daalo
  // Option 2: assets/logo.png (pubspec me already folder added hai)
  //           -> file rakho `assets/logo/logo.png` aur logoAsset me wahi path daalo
  // Dono khali chhodoge to "Z" letter wala default logo dikhega.
  static const String logoUrl = '';
  static const String logoAsset = ''; // e.g. 'assets/logo/logo.png'

  // ---------------------------------------------------------------- SUPABASE
  // Supabase > Project Settings > API
  static const String supabaseUrl = 'https://bpvfbzkefyqocmqdggtb.supabase.co'; // https://xxxxx.supabase.co
  static const String supabaseAnonKey = 'sb_publishable_WeJBU8u6xUXtXDfwEMRfDg_j_5tgHCn'; // anon public key (service_role KEY KABHI MAT DAALNA)

  // ---------------------------------------------------------------- RAZORPAY
  // Razorpay Dashboard > Settings > API Keys  (sirf Key ID, secret app me nahi daalna)
  // Test key: rzp_test_xxxxx    Live key: rzp_live_xxxxx
  static const String razorpayKeyId = 'rzp_test_TusCjAN4XOJTkH';
  static const String razorpayMerchantName = 'Zenvora Mart';

  // ---------------------------------------------------------------- MEMBERSHIP
  static const int membershipPrice = 29; // Rs per month
  static const int membershipDays = 30; // kitne din active rahega
  static const String membershipName = 'Zenvora Plus';

  // ---------------------------------------------------------------- ADMIN
  // Ye email se login karne wale log Admin panel dekhenge.
  // Supabase me bhi wahi email `admins` table me daalna (supabase/setup.sql dekho).
  static const List<String> adminEmails = [ 'kajgarvarad@gmail.com'
    // 'you@example.com',
  ];
  static const String adminPin = '1234'; // Admin panel kholne ka PIN - zaroor badlo
  // Purana phone-wala owner login (optional). Khali chhodo to band rahega.
  static const String ownerPhone = '';

  // ---------------------------------------------------------------- HELPERS
  static bool get supabaseReady => supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;
  static bool get razorpayReady => razorpayKeyId.isNotEmpty;
  static bool isAdminEmail(String email) =>
      email.isNotEmpty && adminEmails.any((e) => e.trim().toLowerCase() == email.trim().toLowerCase());
}
