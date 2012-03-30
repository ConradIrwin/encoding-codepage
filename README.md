The encoding-codepage gem adds a little bit of sugar for dealing with Microsoft Code Page
Identifiers instead of Encoding names. Importantly, it does not add any new encodings, it
just adds new names for existing encodings.

To install:
    gem install encoding-codepage

To use:
    require 'encoding-codepage'

(If you're using Bundler, you can just add `gem 'encoding-codepage'` to your Gemfile)


Features
========

Adds three methods to the `Encoding` class:

For looking up encodings by their Code Page Identifier:

    Encoding.codepage(28591)
    # => #<Encoding:CP28591>

For seeing whether encodings exist:

    Encoding.exist?("CP28591")
    # => #<Encoding:CP28591>

    Encoding.exist?("CP37")
    # => nil

For seeing whether code-pages exist:

    Encoding.codepage?(28591)
    # => #<Encoding:CP28591>

    Encoding.codepage?(37)
    # => nil

Also makes all supported Code Pages available with a `CP` prefix:

    Encoding::CP28591
    # => #<Encoding:CP28591>

    Encoding.find("CP28591")
    # => #<Encoding:CP28591>

Encodings
=========

After installing this gem, you'll be able to access the following Code Pages from Ruby:

    CP437   => IBM437         # OEM United States
    CP737   => IBM737         # OEM Greek (formerly 437G); Greek (DOS)
    CP775   => IBM775         # OEM Baltic; Baltic (DOS)
    CP850   => IBM850         # OEM Multilingual Latin 1; Western European (DOS)
    CP852   => IBM852         # OEM Latin 2; Central European (DOS)
    CP855   => IBM855         # OEM Cyrillic (primarily Russian)
    CP857   => IBM857         # OEM Turkish; Turkish (DOS)
    CP860   => IBM860         # OEM Portuguese; Portuguese (DOS)
    CP861   => IBM861         # OEM Icelandic; Icelandic (DOS)
    CP862   => DOS-862        # OEM Hebrew; Hebrew (DOS)
    CP863   => IBM863         # OEM French Canadian; French Canadian (DOS)
    CP864   => IBM864         # OEM Arabic; Arabic (864)
    CP865   => IBM865         # OEM Nordic; Nordic (DOS)
    CP866   => CP866          # OEM Russian; Cyrillic (DOS)
    CP869   => IBM869         # OEM Modern Greek; Greek, Modern (DOS)
    CP874   => WINDOWS-874    # ANSI/OEM Thai (same as 28605, ISO 8859-15); Thai (Windows)
    CP932   => SHIFT_JIS      # ANSI/OEM Japanese; Japanese (Shift-JIS)
    CP936   => GB2312         # ANSI/OEM Simplified Chinese (PRC, Singapore); Chinese Simplified (GB2312)
    CP949   => KS_C_5601-1987 # ANSI/OEM Korean (Unified Hangul Code)
    CP950   => BIG5           # ANSI/OEM Traditional Chinese (Taiwan; Hong Kong SAR, PRC); Chinese Traditional (Big5)
    CP1200  => UTF-16         # Unicode UTF-16, little endian byte order (BMP of ISO 10646); available only to managed applications
    CP1250  => WINDOWS-1250   # ANSI Central European; Central European (Windows)
    CP1251  => WINDOWS-1251   # ANSI Cyrillic; Cyrillic (Windows)
    CP1252  => WINDOWS-1252   # ANSI Latin 1; Western European (Windows)
    CP1253  => WINDOWS-1253   # ANSI Greek; Greek (Windows)
    CP1254  => WINDOWS-1254   # ANSI Turkish; Turkish (Windows)
    CP1255  => WINDOWS-1255   # ANSI Hebrew; Hebrew (Windows)
    CP1256  => WINDOWS-1256   # ANSI Arabic; Arabic (Windows)
    CP1257  => WINDOWS-1257   # ANSI Baltic; Baltic (Windows)
    CP1258  => WINDOWS-1258   # ANSI/OEM Vietnamese; Vietnamese (Windows)
    CP12000 => UTF-32         # Unicode UTF-32, little endian byte order; available only to managed applications
    CP12001 => UTF-32BE       # Unicode UTF-32, big endian byte order; available only to managed applications
    CP20127 => US-ASCII       # US-ASCII (7-bit)
    CP20866 => KOI8-R         # Russian (KOI8-R); Cyrillic (KOI8-R)
    CP20932 => EUC-JP         # Japanese (JIS 0208-1990 and 0121-1990)
    CP21866 => KOI8-U         # Ukrainian (KOI8-U); Cyrillic (KOI8-U)
    CP28591 => ISO-8859-1     # ISO 8859-1 Latin 1; Western European (ISO)
    CP28592 => ISO-8859-2     # ISO 8859-2 Central European; Central European (ISO)
    CP28593 => ISO-8859-3     # ISO 8859-3 Latin 3
    CP28594 => ISO-8859-4     # ISO 8859-4 Baltic
    CP28595 => ISO-8859-5     # ISO 8859-5 Cyrillic
    CP28596 => ISO-8859-6     # ISO 8859-6 Arabic
    CP28597 => ISO-8859-7     # ISO 8859-7 Greek
    CP28598 => ISO-8859-8     # ISO 8859-8 Hebrew; Hebrew (ISO-Visual)
    CP28599 => ISO-8859-9     # ISO 8859-9 Turkish
    CP28603 => ISO-8859-13    # ISO 8859-13 Estonian
    CP28605 => ISO-8859-15    # ISO 8859-15 Latin 9
    CP50220 => ISO-2022-JP    # ISO 2022 Japanese with no halfwidth Katakana; Japanese (JIS)
    CP50221 => CSISO2022JP    # ISO 2022 Japanese with halfwidth Katakana; Japanese (JIS-Allow 1 byte Kana)
    CP50222 => ISO-2022-JP    # ISO 2022 Japanese JIS X 0201-1989; Japanese (JIS-Allow 1 byte Kana - SO/SI)
    CP51932 => EUC-JP         # EUC Japanese
    CP51936 => EUC-CN         # EUC Simplified Chinese; Chinese Simplified (EUC)
    CP51949 => EUC-KR         # EUC Korean
    CP54936 => GB18030        # Windows XP and later: GB18030 Simplified Chinese (4 byte); Chinese Simplified (GB18030)
    CP65000 => UTF-7          # Unicode (UTF-7)
    CP65001 => UTF-8          # Unicode (UTF-8)

The following code pages are known not to be supported:

    CP37    => IBM037                  # IBM EBCDIC US-Canada
    CP500   => IBM500                  # IBM EBCDIC International
    CP708   => ASMO-708                # Arabic (ASMO 708)
    CP709   =>                         # Arabic (ASMO-449+, BCON V4)
    CP710   =>                         # Arabic - Transparent Arabic
    CP720   => DOS-720                 # Arabic (Transparent ASMO); Arabic (DOS)
    CP858   => IBM00858                # OEM Multilingual Latin 1 + Euro symbol
    CP870   => IBM870                  # IBM EBCDIC Multilingual/ROECE (Latin 2); IBM EBCDIC Multilingual Latin 2
    CP875   => CP875                   # IBM EBCDIC Greek Modern
    CP1026  => IBM1026                 # IBM EBCDIC Turkish (Latin 5)
    CP1047  => IBM01047                # IBM EBCDIC Latin 1/Open System
    CP1140  => IBM01140                # IBM EBCDIC US-Canada (037 + Euro symbol); IBM EBCDIC (US-Canada-Euro)
    CP1141  => IBM01141                # IBM EBCDIC Germany (20273 + Euro symbol); IBM EBCDIC (Germany-Euro)
    CP1142  => IBM01142                # IBM EBCDIC Denmark-Norway (20277 + Euro symbol); IBM EBCDIC (Denmark-Norway-Euro)
    CP1143  => IBM01143                # IBM EBCDIC Finland-Sweden (20278 + Euro symbol); IBM EBCDIC (Finland-Sweden-Euro)
    CP1144  => IBM01144                # IBM EBCDIC Italy (20280 + Euro symbol); IBM EBCDIC (Italy-Euro)
    CP1145  => IBM01145                # IBM EBCDIC Latin America-Spain (20284 + Euro symbol); IBM EBCDIC (Spain-Euro)
    CP1146  => IBM01146                # IBM EBCDIC United Kingdom (20285 + Euro symbol); IBM EBCDIC (UK-Euro)
    CP1147  => IBM01147                # IBM EBCDIC France (20297 + Euro symbol); IBM EBCDIC (France-Euro)
    CP1148  => IBM01148                # IBM EBCDIC International (500 + Euro symbol); IBM EBCDIC (International-Euro)
    CP1149  => IBM01149                # IBM EBCDIC Icelandic (20871 + Euro symbol); IBM EBCDIC (Icelandic-Euro)
    CP1201  => UNICODEFFFE             # Unicode UTF-16, big endian byte order; available only to managed applications
    CP1361  => JOHAB                   # Korean (Johab)
    CP10000 => MACINTOSH               # MAC Roman; Western European (Mac)
    CP10001 => X-MAC-JAPANESE          # Japanese (Mac)
    CP10002 => X-MAC-CHINESETRAD       # MAC Traditional Chinese (Big5); Chinese Traditional (Mac)
    CP10003 => X-MAC-KOREAN            # Korean (Mac)
    CP10004 => X-MAC-ARABIC            # Arabic (Mac)
    CP10005 => X-MAC-HEBREW            # Hebrew (Mac)
    CP10006 => X-MAC-GREEK             # Greek (Mac)
    CP10007 => X-MAC-CYRILLIC          # Cyrillic (Mac)
    CP10008 => X-MAC-CHINESESIMP       # MAC Simplified Chinese (GB 2312); Chinese Simplified (Mac)
    CP10010 => X-MAC-ROMANIAN          # Romanian (Mac)
    CP10017 => X-MAC-UKRAINIAN         # Ukrainian (Mac)
    CP10021 => X-MAC-THAI              # Thai (Mac)
    CP10029 => X-MAC-CE                # MAC Latin 2; Central European (Mac)
    CP10079 => X-MAC-ICELANDIC         # Icelandic (Mac)
    CP10081 => X-MAC-TURKISH           # Turkish (Mac)
    CP10082 => X-MAC-CROATIAN          # Croatian (Mac)
    CP20000 => X-CHINESE_CNS           # CNS Taiwan; Chinese Traditional (CNS)
    CP20001 => X-CP20001               # TCA Taiwan
    CP20002 => X_CHINESE-ETEN          # Eten Taiwan; Chinese Traditional (Eten)
    CP20003 => X-CP20003               # IBM5550 Taiwan
    CP20004 => X-CP20004               # TeleText Taiwan
    CP20005 => X-CP20005               # Wang Taiwan
    CP20105 => X-IA5                   # IA5 (IRV International Alphabet No. 5, 7-bit); Western European (IA5)
    CP20106 => X-IA5-GERMAN            # IA5 German (7-bit)
    CP20107 => X-IA5-SWEDISH           # IA5 Swedish (7-bit)
    CP20108 => X-IA5-NORWEGIAN         # IA5 Norwegian (7-bit)
    CP20261 => X-CP20261               # T.61
    CP20269 => X-CP20269               # ISO 6937 Non-Spacing Accent
    CP20273 => IBM273                  # IBM EBCDIC Germany
    CP20277 => IBM277                  # IBM EBCDIC Denmark-Norway
    CP20278 => IBM278                  # IBM EBCDIC Finland-Sweden
    CP20280 => IBM280                  # IBM EBCDIC Italy
    CP20284 => IBM284                  # IBM EBCDIC Latin America-Spain
    CP20285 => IBM285                  # IBM EBCDIC United Kingdom
    CP20290 => IBM290                  # IBM EBCDIC Japanese Katakana Extended
    CP20297 => IBM297                  # IBM EBCDIC France
    CP20420 => IBM420                  # IBM EBCDIC Arabic
    CP20423 => IBM423                  # IBM EBCDIC Greek
    CP20424 => IBM424                  # IBM EBCDIC Hebrew
    CP20833 => X-EBCDIC-KOREANEXTENDED # IBM EBCDIC Korean Extended
    CP20838 => IBM-THAI                # IBM EBCDIC Thai
    CP20871 => IBM871                  # IBM EBCDIC Icelandic
    CP20880 => IBM880                  # IBM EBCDIC Cyrillic Russian
    CP20905 => IBM905                  # IBM EBCDIC Turkish
    CP20924 => IBM00924                # IBM EBCDIC Latin 1/Open System (1047 + Euro symbol)
    CP20936 => X-CP20936               # Simplified Chinese (GB2312); Chinese Simplified (GB2312-80)
    CP20949 => X-CP20949               # Korean Wansung
    CP21025 => CP1025                  # IBM EBCDIC Cyrillic Serbian-Bulgarian
    CP21027 =>                         # (deprecated)
    CP29001 => X-EUROPA                # Europa 3
    CP38598 => ISO-8859-8-I            # ISO 8859-8 Hebrew; Hebrew (ISO-Logical)
    CP50225 => ISO-2022-KR             # ISO 2022 Korean
    CP50227 => X-CP50227               # ISO 2022 Simplified Chinese; Chinese Simplified (ISO 2022)
    CP50229 =>                         # ISO 2022 Traditional Chinese
    CP50930 =>                         # EBCDIC Japanese (Katakana) Extended
    CP50931 =>                         # EBCDIC US-Canada and Japanese
    CP50933 =>                         # EBCDIC Korean Extended and Korean
    CP50935 =>                         # EBCDIC Simplified Chinese Extended and Simplified Chinese
    CP50936 =>                         # EBCDIC Simplified Chinese
    CP50937 =>                         # EBCDIC US-Canada and Traditional Chinese
    CP50939 =>                         # EBCDIC Japanese (Latin) Extended and Japanese
    CP51950 =>                         # EUC Traditional Chinese
    CP52936 => HZ-GB-2312              # HZ-GB2312 Simplified Chinese; Chinese Simplified (HZ)
    CP57002 => X-ISCII-DE              # ISCII Devanagari
    CP57003 => X-ISCII-BE              # ISCII Bengali
    CP57004 => X-ISCII-TA              # ISCII Tamil
    CP57005 => X-ISCII-TE              # ISCII Telugu
    CP57006 => X-ISCII-AS              # ISCII Assamese
    CP57007 => X-ISCII-OR              # ISCII Oriya
    CP57008 => X-ISCII-KA              # ISCII Kannada
    CP57009 => X-ISCII-MA              # ISCII Malayalam
    CP57010 => X-ISCII-GU              # ISCII Gujarati
    CP57011 => X-ISCII-PA              # ISCII Punjabi

Original list from: http://msdn.microsoft.com/en-us/library/dd317756(VS.85).aspx

Meta-foo
=======

Code licensed under the MIT license, see LICENSE.MIT for details.

List licensed under the Microsoft Limited Public License, see LICENSE.MLPL for details.

