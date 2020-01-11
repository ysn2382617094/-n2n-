.class final Ltwitter4j/HTMLEntity;
.super Ljava/lang/Object;
.source "HTMLEntity.java"


# static fields
.field private static final entityEscapeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final escapeEntityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    const/16 v0, 0xfb

    .line 167
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&nbsp;"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "&#160;"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "\u00a0"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&iexcl;"

    aput-object v3, v2, v4

    const-string v3, "&#161;"

    aput-object v3, v2, v5

    const-string v3, "\u00a1"

    aput-object v3, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&cent;"

    aput-object v3, v2, v4

    const-string v3, "&#162;"

    aput-object v3, v2, v5

    const-string v3, "\u00a2"

    aput-object v3, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&pound;"

    aput-object v3, v2, v4

    const-string v3, "&#163;"

    aput-object v3, v2, v5

    const-string v3, "\u00a3"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&curren;"

    aput-object v3, v2, v4

    const-string v3, "&#164;"

    aput-object v3, v2, v5

    const-string v3, "\u00a4"

    aput-object v3, v2, v6

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&yen;"

    aput-object v3, v2, v4

    const-string v3, "&#165;"

    aput-object v3, v2, v5

    const-string v3, "\u00a5"

    aput-object v3, v2, v6

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&brvbar;"

    aput-object v3, v2, v4

    const-string v3, "&#166;"

    aput-object v3, v2, v5

    const-string v3, "\u00a6"

    aput-object v3, v2, v6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sect;"

    aput-object v3, v2, v4

    const-string v3, "&#167;"

    aput-object v3, v2, v5

    const-string v3, "\u00a7"

    aput-object v3, v2, v6

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&uml;"

    aput-object v3, v2, v4

    const-string v3, "&#168;"

    aput-object v3, v2, v5

    const-string v3, "\u00a8"

    aput-object v3, v2, v6

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&copy;"

    aput-object v3, v2, v4

    const-string v3, "&#169;"

    aput-object v3, v2, v5

    const-string v3, "\u00a9"

    aput-object v3, v2, v6

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ordf;"

    aput-object v3, v2, v4

    const-string v3, "&#170;"

    aput-object v3, v2, v5

    const-string v3, "\u00aa"

    aput-object v3, v2, v6

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&laquo;"

    aput-object v3, v2, v4

    const-string v3, "&#171;"

    aput-object v3, v2, v5

    const-string v3, "\u00ab"

    aput-object v3, v2, v6

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&not;"

    aput-object v3, v2, v4

    const-string v3, "&#172;"

    aput-object v3, v2, v5

    const-string v3, "\u00ac"

    aput-object v3, v2, v6

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&shy;"

    aput-object v3, v2, v4

    const-string v3, "&#173;"

    aput-object v3, v2, v5

    const-string v3, "\u00ad"

    aput-object v3, v2, v6

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&reg;"

    aput-object v3, v2, v4

    const-string v3, "&#174;"

    aput-object v3, v2, v5

    const-string v3, "\u00ae"

    aput-object v3, v2, v6

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&macr;"

    aput-object v3, v2, v4

    const-string v3, "&#175;"

    aput-object v3, v2, v5

    const-string v3, "\u00af"

    aput-object v3, v2, v6

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&deg;"

    aput-object v3, v2, v4

    const-string v3, "&#176;"

    aput-object v3, v2, v5

    const-string v3, "\u00b0"

    aput-object v3, v2, v6

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&plusmn;"

    aput-object v3, v2, v4

    const-string v3, "&#177;"

    aput-object v3, v2, v5

    const-string v3, "\u00b1"

    aput-object v3, v2, v6

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sup2;"

    aput-object v3, v2, v4

    const-string v3, "&#178;"

    aput-object v3, v2, v5

    const-string v3, "\u00b2"

    aput-object v3, v2, v6

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sup3;"

    aput-object v3, v2, v4

    const-string v3, "&#179;"

    aput-object v3, v2, v5

    const-string v3, "\u00b3"

    aput-object v3, v2, v6

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&acute;"

    aput-object v3, v2, v4

    const-string v3, "&#180;"

    aput-object v3, v2, v5

    const-string v3, "\u00b4"

    aput-object v3, v2, v6

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&micro;"

    aput-object v3, v2, v4

    const-string v3, "&#181;"

    aput-object v3, v2, v5

    const-string v3, "\u00b5"

    aput-object v3, v2, v6

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&para;"

    aput-object v3, v2, v4

    const-string v3, "&#182;"

    aput-object v3, v2, v5

    const-string v3, "\u00b6"

    aput-object v3, v2, v6

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&middot;"

    aput-object v3, v2, v4

    const-string v3, "&#183;"

    aput-object v3, v2, v5

    const-string v3, "\u00b7"

    aput-object v3, v2, v6

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&cedil;"

    aput-object v3, v2, v4

    const-string v3, "&#184;"

    aput-object v3, v2, v5

    const-string v3, "\u00b8"

    aput-object v3, v2, v6

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sup1;"

    aput-object v3, v2, v4

    const-string v3, "&#185;"

    aput-object v3, v2, v5

    const-string v3, "\u00b9"

    aput-object v3, v2, v6

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ordm;"

    aput-object v3, v2, v4

    const-string v3, "&#186;"

    aput-object v3, v2, v5

    const-string v3, "\u00ba"

    aput-object v3, v2, v6

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&raquo;"

    aput-object v3, v2, v4

    const-string v3, "&#187;"

    aput-object v3, v2, v5

    const-string v3, "\u00bb"

    aput-object v3, v2, v6

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&frac14;"

    aput-object v3, v2, v4

    const-string v3, "&#188;"

    aput-object v3, v2, v5

    const-string v3, "\u00bc"

    aput-object v3, v2, v6

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&frac12;"

    aput-object v3, v2, v4

    const-string v3, "&#189;"

    aput-object v3, v2, v5

    const-string v3, "\u00bd"

    aput-object v3, v2, v6

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&frac34;"

    aput-object v3, v2, v4

    const-string v3, "&#190;"

    aput-object v3, v2, v5

    const-string v3, "\u00be"

    aput-object v3, v2, v6

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&iquest;"

    aput-object v3, v2, v4

    const-string v3, "&#191;"

    aput-object v3, v2, v5

    const-string v3, "\u00bf"

    aput-object v3, v2, v6

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Agrave;"

    aput-object v3, v2, v4

    const-string v3, "&#192;"

    aput-object v3, v2, v5

    const-string v3, "\u00c0"

    aput-object v3, v2, v6

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Aacute;"

    aput-object v3, v2, v4

    const-string v3, "&#193;"

    aput-object v3, v2, v5

    const-string v3, "\u00c1"

    aput-object v3, v2, v6

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Acirc;"

    aput-object v3, v2, v4

    const-string v3, "&#194;"

    aput-object v3, v2, v5

    const-string v3, "\u00c2"

    aput-object v3, v2, v6

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Atilde;"

    aput-object v3, v2, v4

    const-string v3, "&#195;"

    aput-object v3, v2, v5

    const-string v3, "\u00c3"

    aput-object v3, v2, v6

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Auml;"

    aput-object v3, v2, v4

    const-string v3, "&#196;"

    aput-object v3, v2, v5

    const-string v3, "\u00c4"

    aput-object v3, v2, v6

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Aring;"

    aput-object v3, v2, v4

    const-string v3, "&#197;"

    aput-object v3, v2, v5

    const-string v3, "\u00c5"

    aput-object v3, v2, v6

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&AElig;"

    aput-object v3, v2, v4

    const-string v3, "&#198;"

    aput-object v3, v2, v5

    const-string v3, "\u00c6"

    aput-object v3, v2, v6

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ccedil;"

    aput-object v3, v2, v4

    const-string v3, "&#199;"

    aput-object v3, v2, v5

    const-string v3, "\u00c7"

    aput-object v3, v2, v6

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Egrave;"

    aput-object v3, v2, v4

    const-string v3, "&#200;"

    aput-object v3, v2, v5

    const-string v3, "\u00c8"

    aput-object v3, v2, v6

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Eacute;"

    aput-object v3, v2, v4

    const-string v3, "&#201;"

    aput-object v3, v2, v5

    const-string v3, "\u00c9"

    aput-object v3, v2, v6

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ecirc;"

    aput-object v3, v2, v4

    const-string v3, "&#202;"

    aput-object v3, v2, v5

    const-string v3, "\u00ca"

    aput-object v3, v2, v6

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Euml;"

    aput-object v3, v2, v4

    const-string v3, "&#203;"

    aput-object v3, v2, v5

    const-string v3, "\u00cb"

    aput-object v3, v2, v6

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Igrave;"

    aput-object v3, v2, v4

    const-string v3, "&#204;"

    aput-object v3, v2, v5

    const-string v3, "\u00cc"

    aput-object v3, v2, v6

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Iacute;"

    aput-object v3, v2, v4

    const-string v3, "&#205;"

    aput-object v3, v2, v5

    const-string v3, "\u00cd"

    aput-object v3, v2, v6

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Icirc;"

    aput-object v3, v2, v4

    const-string v3, "&#206;"

    aput-object v3, v2, v5

    const-string v3, "\u00ce"

    aput-object v3, v2, v6

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Iuml;"

    aput-object v3, v2, v4

    const-string v3, "&#207;"

    aput-object v3, v2, v5

    const-string v3, "\u00cf"

    aput-object v3, v2, v6

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ETH;"

    aput-object v3, v2, v4

    const-string v3, "&#208;"

    aput-object v3, v2, v5

    const-string v3, "\u00d0"

    aput-object v3, v2, v6

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ntilde;"

    aput-object v3, v2, v4

    const-string v3, "&#209;"

    aput-object v3, v2, v5

    const-string v3, "\u00d1"

    aput-object v3, v2, v6

    const/16 v3, 0x31

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ograve;"

    aput-object v3, v2, v4

    const-string v3, "&#210;"

    aput-object v3, v2, v5

    const-string v3, "\u00d2"

    aput-object v3, v2, v6

    const/16 v3, 0x32

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Oacute;"

    aput-object v3, v2, v4

    const-string v3, "&#211;"

    aput-object v3, v2, v5

    const-string v3, "\u00d3"

    aput-object v3, v2, v6

    const/16 v3, 0x33

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ocirc;"

    aput-object v3, v2, v4

    const-string v3, "&#212;"

    aput-object v3, v2, v5

    const-string v3, "\u00d4"

    aput-object v3, v2, v6

    const/16 v3, 0x34

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Otilde;"

    aput-object v3, v2, v4

    const-string v3, "&#213;"

    aput-object v3, v2, v5

    const-string v3, "\u00d5"

    aput-object v3, v2, v6

    const/16 v3, 0x35

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ouml;"

    aput-object v3, v2, v4

    const-string v3, "&#214;"

    aput-object v3, v2, v5

    const-string v3, "\u00d6"

    aput-object v3, v2, v6

    const/16 v3, 0x36

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&times;"

    aput-object v3, v2, v4

    const-string v3, "&#215;"

    aput-object v3, v2, v5

    const-string v3, "\u00d7"

    aput-object v3, v2, v6

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Oslash;"

    aput-object v3, v2, v4

    const-string v3, "&#216;"

    aput-object v3, v2, v5

    const-string v3, "\u00d8"

    aput-object v3, v2, v6

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ugrave;"

    aput-object v3, v2, v4

    const-string v3, "&#217;"

    aput-object v3, v2, v5

    const-string v3, "\u00d9"

    aput-object v3, v2, v6

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Uacute;"

    aput-object v3, v2, v4

    const-string v3, "&#218;"

    aput-object v3, v2, v5

    const-string v3, "\u00da"

    aput-object v3, v2, v6

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Ucirc;"

    aput-object v3, v2, v4

    const-string v3, "&#219;"

    aput-object v3, v2, v5

    const-string v3, "\u00db"

    aput-object v3, v2, v6

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Uuml;"

    aput-object v3, v2, v4

    const-string v3, "&#220;"

    aput-object v3, v2, v5

    const-string v3, "\u00dc"

    aput-object v3, v2, v6

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Yacute;"

    aput-object v3, v2, v4

    const-string v3, "&#221;"

    aput-object v3, v2, v5

    const-string v3, "\u00dd"

    aput-object v3, v2, v6

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&THORN;"

    aput-object v3, v2, v4

    const-string v3, "&#222;"

    aput-object v3, v2, v5

    const-string v3, "\u00de"

    aput-object v3, v2, v6

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&szlig;"

    aput-object v3, v2, v4

    const-string v3, "&#223;"

    aput-object v3, v2, v5

    const-string v3, "\u00df"

    aput-object v3, v2, v6

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&agrave;"

    aput-object v3, v2, v4

    const-string v3, "&#224;"

    aput-object v3, v2, v5

    const-string v3, "\u00e0"

    aput-object v3, v2, v6

    const/16 v3, 0x40

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&aacute;"

    aput-object v3, v2, v4

    const-string v3, "&#225;"

    aput-object v3, v2, v5

    const-string v3, "\u00e1"

    aput-object v3, v2, v6

    const/16 v3, 0x41

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&acirc;"

    aput-object v3, v2, v4

    const-string v3, "&#226;"

    aput-object v3, v2, v5

    const-string v3, "\u00e2"

    aput-object v3, v2, v6

    const/16 v3, 0x42

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&atilde;"

    aput-object v3, v2, v4

    const-string v3, "&#227;"

    aput-object v3, v2, v5

    const-string v3, "\u00e3"

    aput-object v3, v2, v6

    const/16 v3, 0x43

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&auml;"

    aput-object v3, v2, v4

    const-string v3, "&#228;"

    aput-object v3, v2, v5

    const-string v3, "\u00e4"

    aput-object v3, v2, v6

    const/16 v3, 0x44

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&aring;"

    aput-object v3, v2, v4

    const-string v3, "&#229;"

    aput-object v3, v2, v5

    const-string v3, "\u00e5"

    aput-object v3, v2, v6

    const/16 v3, 0x45

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&aelig;"

    aput-object v3, v2, v4

    const-string v3, "&#230;"

    aput-object v3, v2, v5

    const-string v3, "\u00e6"

    aput-object v3, v2, v6

    const/16 v3, 0x46

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ccedil;"

    aput-object v3, v2, v4

    const-string v3, "&#231;"

    aput-object v3, v2, v5

    const-string v3, "\u00e7"

    aput-object v3, v2, v6

    const/16 v3, 0x47

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&egrave;"

    aput-object v3, v2, v4

    const-string v3, "&#232;"

    aput-object v3, v2, v5

    const-string v3, "\u00e8"

    aput-object v3, v2, v6

    const/16 v3, 0x48

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&eacute;"

    aput-object v3, v2, v4

    const-string v3, "&#233;"

    aput-object v3, v2, v5

    const-string v3, "\u00e9"

    aput-object v3, v2, v6

    const/16 v3, 0x49

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ecirc;"

    aput-object v3, v2, v4

    const-string v3, "&#234;"

    aput-object v3, v2, v5

    const-string v3, "\u00ea"

    aput-object v3, v2, v6

    const/16 v3, 0x4a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&euml;"

    aput-object v3, v2, v4

    const-string v3, "&#235;"

    aput-object v3, v2, v5

    const-string v3, "\u00eb"

    aput-object v3, v2, v6

    const/16 v3, 0x4b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&igrave;"

    aput-object v3, v2, v4

    const-string v3, "&#236;"

    aput-object v3, v2, v5

    const-string v3, "\u00ec"

    aput-object v3, v2, v6

    const/16 v3, 0x4c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&iacute;"

    aput-object v3, v2, v4

    const-string v3, "&#237;"

    aput-object v3, v2, v5

    const-string v3, "\u00ed"

    aput-object v3, v2, v6

    const/16 v3, 0x4d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&icirc;"

    aput-object v3, v2, v4

    const-string v3, "&#238;"

    aput-object v3, v2, v5

    const-string v3, "\u00ee"

    aput-object v3, v2, v6

    const/16 v3, 0x4e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&iuml;"

    aput-object v3, v2, v4

    const-string v3, "&#239;"

    aput-object v3, v2, v5

    const-string v3, "\u00ef"

    aput-object v3, v2, v6

    const/16 v3, 0x4f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&eth;"

    aput-object v3, v2, v4

    const-string v3, "&#240;"

    aput-object v3, v2, v5

    const-string v3, "\u00f0"

    aput-object v3, v2, v6

    const/16 v3, 0x50

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ntilde;"

    aput-object v3, v2, v4

    const-string v3, "&#241;"

    aput-object v3, v2, v5

    const-string v3, "\u00f1"

    aput-object v3, v2, v6

    const/16 v3, 0x51

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ograve;"

    aput-object v3, v2, v4

    const-string v3, "&#242;"

    aput-object v3, v2, v5

    const-string v3, "\u00f2"

    aput-object v3, v2, v6

    const/16 v3, 0x52

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&oacute;"

    aput-object v3, v2, v4

    const-string v3, "&#243;"

    aput-object v3, v2, v5

    const-string v3, "\u00f3"

    aput-object v3, v2, v6

    const/16 v3, 0x53

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ocirc;"

    aput-object v3, v2, v4

    const-string v3, "&#244;"

    aput-object v3, v2, v5

    const-string v3, "\u00f4"

    aput-object v3, v2, v6

    const/16 v3, 0x54

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&otilde;"

    aput-object v3, v2, v4

    const-string v3, "&#245;"

    aput-object v3, v2, v5

    const-string v3, "\u00f5"

    aput-object v3, v2, v6

    const/16 v3, 0x55

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ouml;"

    aput-object v3, v2, v4

    const-string v3, "&#246;"

    aput-object v3, v2, v5

    const-string v3, "\u00f6"

    aput-object v3, v2, v6

    const/16 v3, 0x56

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&divide;"

    aput-object v3, v2, v4

    const-string v3, "&#247;"

    aput-object v3, v2, v5

    const-string v3, "\u00f7"

    aput-object v3, v2, v6

    const/16 v3, 0x57

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&oslash;"

    aput-object v3, v2, v4

    const-string v3, "&#248;"

    aput-object v3, v2, v5

    const-string v3, "\u00f8"

    aput-object v3, v2, v6

    const/16 v3, 0x58

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ugrave;"

    aput-object v3, v2, v4

    const-string v3, "&#249;"

    aput-object v3, v2, v5

    const-string v3, "\u00f9"

    aput-object v3, v2, v6

    const/16 v3, 0x59

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&uacute;"

    aput-object v3, v2, v4

    const-string v3, "&#250;"

    aput-object v3, v2, v5

    const-string v3, "\u00fa"

    aput-object v3, v2, v6

    const/16 v3, 0x5a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ucirc;"

    aput-object v3, v2, v4

    const-string v3, "&#251;"

    aput-object v3, v2, v5

    const-string v3, "\u00fb"

    aput-object v3, v2, v6

    const/16 v3, 0x5b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&uuml;"

    aput-object v3, v2, v4

    const-string v3, "&#252;"

    aput-object v3, v2, v5

    const-string v3, "\u00fc"

    aput-object v3, v2, v6

    const/16 v3, 0x5c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&yacute;"

    aput-object v3, v2, v4

    const-string v3, "&#253;"

    aput-object v3, v2, v5

    const-string v3, "\u00fd"

    aput-object v3, v2, v6

    const/16 v3, 0x5d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&thorn;"

    aput-object v3, v2, v4

    const-string v3, "&#254;"

    aput-object v3, v2, v5

    const-string v3, "\u00fe"

    aput-object v3, v2, v6

    const/16 v3, 0x5e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&yuml;"

    aput-object v3, v2, v4

    const-string v3, "&#255;"

    aput-object v3, v2, v5

    const-string v3, "\u00ff"

    aput-object v3, v2, v6

    const/16 v3, 0x5f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&fnof;"

    aput-object v3, v2, v4

    const-string v3, "&#402;"

    aput-object v3, v2, v5

    const-string v3, "\u0192"

    aput-object v3, v2, v6

    const/16 v3, 0x60

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Alpha;"

    aput-object v3, v2, v4

    const-string v3, "&#913;"

    aput-object v3, v2, v5

    const-string v3, "\u0391"

    aput-object v3, v2, v6

    const/16 v3, 0x61

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Beta;"

    aput-object v3, v2, v4

    const-string v3, "&#914;"

    aput-object v3, v2, v5

    const-string v3, "\u0392"

    aput-object v3, v2, v6

    const/16 v3, 0x62

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Gamma;"

    aput-object v3, v2, v4

    const-string v3, "&#915;"

    aput-object v3, v2, v5

    const-string v3, "\u0393"

    aput-object v3, v2, v6

    const/16 v3, 0x63

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Delta;"

    aput-object v3, v2, v4

    const-string v3, "&#916;"

    aput-object v3, v2, v5

    const-string v3, "\u0394"

    aput-object v3, v2, v6

    const/16 v3, 0x64

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Epsilon;"

    aput-object v3, v2, v4

    const-string v3, "&#917;"

    aput-object v3, v2, v5

    const-string v3, "\u0395"

    aput-object v3, v2, v6

    const/16 v3, 0x65

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Zeta;"

    aput-object v3, v2, v4

    const-string v3, "&#918;"

    aput-object v3, v2, v5

    const-string v3, "\u0396"

    aput-object v3, v2, v6

    const/16 v3, 0x66

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Eta;"

    aput-object v3, v2, v4

    const-string v3, "&#919;"

    aput-object v3, v2, v5

    const-string v3, "\u0397"

    aput-object v3, v2, v6

    const/16 v3, 0x67

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Theta;"

    aput-object v3, v2, v4

    const-string v3, "&#920;"

    aput-object v3, v2, v5

    const-string v3, "\u0398"

    aput-object v3, v2, v6

    const/16 v3, 0x68

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Iota;"

    aput-object v3, v2, v4

    const-string v3, "&#921;"

    aput-object v3, v2, v5

    const-string v3, "\u0399"

    aput-object v3, v2, v6

    const/16 v3, 0x69

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Kappa;"

    aput-object v3, v2, v4

    const-string v3, "&#922;"

    aput-object v3, v2, v5

    const-string v3, "\u039a"

    aput-object v3, v2, v6

    const/16 v3, 0x6a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Lambda;"

    aput-object v3, v2, v4

    const-string v3, "&#923;"

    aput-object v3, v2, v5

    const-string v3, "\u039b"

    aput-object v3, v2, v6

    const/16 v3, 0x6b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Mu;"

    aput-object v3, v2, v4

    const-string v3, "&#924;"

    aput-object v3, v2, v5

    const-string v3, "\u039c"

    aput-object v3, v2, v6

    const/16 v3, 0x6c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Nu;"

    aput-object v3, v2, v4

    const-string v3, "&#925;"

    aput-object v3, v2, v5

    const-string v3, "\u039d"

    aput-object v3, v2, v6

    const/16 v3, 0x6d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Xi;"

    aput-object v3, v2, v4

    const-string v3, "&#926;"

    aput-object v3, v2, v5

    const-string v3, "\u039e"

    aput-object v3, v2, v6

    const/16 v3, 0x6e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Omicron;"

    aput-object v3, v2, v4

    const-string v3, "&#927;"

    aput-object v3, v2, v5

    const-string v3, "\u039f"

    aput-object v3, v2, v6

    const/16 v3, 0x6f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Pi;"

    aput-object v3, v2, v4

    const-string v3, "&#928;"

    aput-object v3, v2, v5

    const-string v3, "\u03a0"

    aput-object v3, v2, v6

    const/16 v3, 0x70

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Rho;"

    aput-object v3, v2, v4

    const-string v3, "&#929;"

    aput-object v3, v2, v5

    const-string v3, "\u03a1"

    aput-object v3, v2, v6

    const/16 v3, 0x71

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Sigma;"

    aput-object v3, v2, v4

    const-string v3, "&#931;"

    aput-object v3, v2, v5

    const-string v3, "\u03a3"

    aput-object v3, v2, v6

    const/16 v3, 0x72

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Tau;"

    aput-object v3, v2, v4

    const-string v3, "&#932;"

    aput-object v3, v2, v5

    const-string v3, "\u03a4"

    aput-object v3, v2, v6

    const/16 v3, 0x73

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Upsilon;"

    aput-object v3, v2, v4

    const-string v3, "&#933;"

    aput-object v3, v2, v5

    const-string v3, "\u03a5"

    aput-object v3, v2, v6

    const/16 v3, 0x74

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Phi;"

    aput-object v3, v2, v4

    const-string v3, "&#934;"

    aput-object v3, v2, v5

    const-string v3, "\u03a6"

    aput-object v3, v2, v6

    const/16 v3, 0x75

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Chi;"

    aput-object v3, v2, v4

    const-string v3, "&#935;"

    aput-object v3, v2, v5

    const-string v3, "\u03a7"

    aput-object v3, v2, v6

    const/16 v3, 0x76

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Psi;"

    aput-object v3, v2, v4

    const-string v3, "&#936;"

    aput-object v3, v2, v5

    const-string v3, "\u03a8"

    aput-object v3, v2, v6

    const/16 v3, 0x77

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Omega;"

    aput-object v3, v2, v4

    const-string v3, "&#937;"

    aput-object v3, v2, v5

    const-string v3, "\u03a9"

    aput-object v3, v2, v6

    const/16 v3, 0x78

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&alpha;"

    aput-object v3, v2, v4

    const-string v3, "&#945;"

    aput-object v3, v2, v5

    const-string v3, "\u03b1"

    aput-object v3, v2, v6

    const/16 v3, 0x79

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&beta;"

    aput-object v3, v2, v4

    const-string v3, "&#946;"

    aput-object v3, v2, v5

    const-string v3, "\u03b2"

    aput-object v3, v2, v6

    const/16 v3, 0x7a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&gamma;"

    aput-object v3, v2, v4

    const-string v3, "&#947;"

    aput-object v3, v2, v5

    const-string v3, "\u03b3"

    aput-object v3, v2, v6

    const/16 v3, 0x7b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&delta;"

    aput-object v3, v2, v4

    const-string v3, "&#948;"

    aput-object v3, v2, v5

    const-string v3, "\u03b4"

    aput-object v3, v2, v6

    const/16 v3, 0x7c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&epsilon;"

    aput-object v3, v2, v4

    const-string v3, "&#949;"

    aput-object v3, v2, v5

    const-string v3, "\u03b5"

    aput-object v3, v2, v6

    const/16 v3, 0x7d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&zeta;"

    aput-object v3, v2, v4

    const-string v3, "&#950;"

    aput-object v3, v2, v5

    const-string v3, "\u03b6"

    aput-object v3, v2, v6

    const/16 v3, 0x7e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&eta;"

    aput-object v3, v2, v4

    const-string v3, "&#951;"

    aput-object v3, v2, v5

    const-string v3, "\u03b7"

    aput-object v3, v2, v6

    const/16 v3, 0x7f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&theta;"

    aput-object v3, v2, v4

    const-string v3, "&#952;"

    aput-object v3, v2, v5

    const-string v3, "\u03b8"

    aput-object v3, v2, v6

    const/16 v3, 0x80

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&iota;"

    aput-object v3, v2, v4

    const-string v3, "&#953;"

    aput-object v3, v2, v5

    const-string v3, "\u03b9"

    aput-object v3, v2, v6

    const/16 v3, 0x81

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&kappa;"

    aput-object v3, v2, v4

    const-string v3, "&#954;"

    aput-object v3, v2, v5

    const-string v3, "\u03ba"

    aput-object v3, v2, v6

    const/16 v3, 0x82

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lambda;"

    aput-object v3, v2, v4

    const-string v3, "&#955;"

    aput-object v3, v2, v5

    const-string v3, "\u03bb"

    aput-object v3, v2, v6

    const/16 v3, 0x83

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&mu;"

    aput-object v3, v2, v4

    const-string v3, "&#956;"

    aput-object v3, v2, v5

    const-string v3, "\u03bc"

    aput-object v3, v2, v6

    const/16 v3, 0x84

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&nu;"

    aput-object v3, v2, v4

    const-string v3, "&#957;"

    aput-object v3, v2, v5

    const-string v3, "\u03bd"

    aput-object v3, v2, v6

    const/16 v3, 0x85

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&xi;"

    aput-object v3, v2, v4

    const-string v3, "&#958;"

    aput-object v3, v2, v5

    const-string v3, "\u03be"

    aput-object v3, v2, v6

    const/16 v3, 0x86

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&omicron;"

    aput-object v3, v2, v4

    const-string v3, "&#959;"

    aput-object v3, v2, v5

    const-string v3, "\u03bf"

    aput-object v3, v2, v6

    const/16 v3, 0x87

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&pi;"

    aput-object v3, v2, v4

    const-string v3, "&#960;"

    aput-object v3, v2, v5

    const-string v3, "\u03c0"

    aput-object v3, v2, v6

    const/16 v3, 0x88

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rho;"

    aput-object v3, v2, v4

    const-string v3, "&#961;"

    aput-object v3, v2, v5

    const-string v3, "\u03c1"

    aput-object v3, v2, v6

    const/16 v3, 0x89

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sigmaf;"

    aput-object v3, v2, v4

    const-string v3, "&#962;"

    aput-object v3, v2, v5

    const-string v3, "\u03c2"

    aput-object v3, v2, v6

    const/16 v3, 0x8a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sigma;"

    aput-object v3, v2, v4

    const-string v3, "&#963;"

    aput-object v3, v2, v5

    const-string v3, "\u03c3"

    aput-object v3, v2, v6

    const/16 v3, 0x8b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&tau;"

    aput-object v3, v2, v4

    const-string v3, "&#964;"

    aput-object v3, v2, v5

    const-string v3, "\u03c4"

    aput-object v3, v2, v6

    const/16 v3, 0x8c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&upsilon;"

    aput-object v3, v2, v4

    const-string v3, "&#965;"

    aput-object v3, v2, v5

    const-string v3, "\u03c5"

    aput-object v3, v2, v6

    const/16 v3, 0x8d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&phi;"

    aput-object v3, v2, v4

    const-string v3, "&#966;"

    aput-object v3, v2, v5

    const-string v3, "\u03c6"

    aput-object v3, v2, v6

    const/16 v3, 0x8e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&chi;"

    aput-object v3, v2, v4

    const-string v3, "&#967;"

    aput-object v3, v2, v5

    const-string v3, "\u03c7"

    aput-object v3, v2, v6

    const/16 v3, 0x8f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&psi;"

    aput-object v3, v2, v4

    const-string v3, "&#968;"

    aput-object v3, v2, v5

    const-string v3, "\u03c8"

    aput-object v3, v2, v6

    const/16 v3, 0x90

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&omega;"

    aput-object v3, v2, v4

    const-string v3, "&#969;"

    aput-object v3, v2, v5

    const-string v3, "\u03c9"

    aput-object v3, v2, v6

    const/16 v3, 0x91

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&thetasym;"

    aput-object v3, v2, v4

    const-string v3, "&#977;"

    aput-object v3, v2, v5

    const-string v3, "\u03d1"

    aput-object v3, v2, v6

    const/16 v3, 0x92

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&upsih;"

    aput-object v3, v2, v4

    const-string v3, "&#978;"

    aput-object v3, v2, v5

    const-string v3, "\u03d2"

    aput-object v3, v2, v6

    const/16 v3, 0x93

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&piv;"

    aput-object v3, v2, v4

    const-string v3, "&#982;"

    aput-object v3, v2, v5

    const-string v3, "\u03d6"

    aput-object v3, v2, v6

    const/16 v3, 0x94

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&bull;"

    aput-object v3, v2, v4

    const-string v3, "&#8226;"

    aput-object v3, v2, v5

    const-string v3, "\u2022"

    aput-object v3, v2, v6

    const/16 v3, 0x95

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&hellip;"

    aput-object v3, v2, v4

    const-string v3, "&#8230;"

    aput-object v3, v2, v5

    const-string v3, "\u2026"

    aput-object v3, v2, v6

    const/16 v3, 0x96

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&prime;"

    aput-object v3, v2, v4

    const-string v3, "&#8242;"

    aput-object v3, v2, v5

    const-string v3, "\u2032"

    aput-object v3, v2, v6

    const/16 v3, 0x97

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Prime;"

    aput-object v3, v2, v4

    const-string v3, "&#8243;"

    aput-object v3, v2, v5

    const-string v3, "\u2033"

    aput-object v3, v2, v6

    const/16 v3, 0x98

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&oline;"

    aput-object v3, v2, v4

    const-string v3, "&#8254;"

    aput-object v3, v2, v5

    const-string v3, "\u203e"

    aput-object v3, v2, v6

    const/16 v3, 0x99

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&frasl;"

    aput-object v3, v2, v4

    const-string v3, "&#8260;"

    aput-object v3, v2, v5

    const-string v3, "\u2044"

    aput-object v3, v2, v6

    const/16 v3, 0x9a

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&weierp;"

    aput-object v3, v2, v4

    const-string v3, "&#8472;"

    aput-object v3, v2, v5

    const-string v3, "\u2118"

    aput-object v3, v2, v6

    const/16 v3, 0x9b

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&image;"

    aput-object v3, v2, v4

    const-string v3, "&#8465;"

    aput-object v3, v2, v5

    const-string v3, "\u2111"

    aput-object v3, v2, v6

    const/16 v3, 0x9c

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&real;"

    aput-object v3, v2, v4

    const-string v3, "&#8476;"

    aput-object v3, v2, v5

    const-string v3, "\u211c"

    aput-object v3, v2, v6

    const/16 v3, 0x9d

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&trade;"

    aput-object v3, v2, v4

    const-string v3, "&#8482;"

    aput-object v3, v2, v5

    const-string v3, "\u2122"

    aput-object v3, v2, v6

    const/16 v3, 0x9e

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&alefsym;"

    aput-object v3, v2, v4

    const-string v3, "&#8501;"

    aput-object v3, v2, v5

    const-string v3, "\u2135"

    aput-object v3, v2, v6

    const/16 v3, 0x9f

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&larr;"

    aput-object v3, v2, v4

    const-string v3, "&#8592;"

    aput-object v3, v2, v5

    const-string v3, "\u2190"

    aput-object v3, v2, v6

    const/16 v3, 0xa0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&uarr;"

    aput-object v3, v2, v4

    const-string v3, "&#8593;"

    aput-object v3, v2, v5

    const-string v3, "\u2191"

    aput-object v3, v2, v6

    const/16 v3, 0xa1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rarr;"

    aput-object v3, v2, v4

    const-string v3, "&#8594;"

    aput-object v3, v2, v5

    const-string v3, "\u2192"

    aput-object v3, v2, v6

    const/16 v3, 0xa2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&darr;"

    aput-object v3, v2, v4

    const-string v3, "&#8595;"

    aput-object v3, v2, v5

    const-string v3, "\u2193"

    aput-object v3, v2, v6

    const/16 v3, 0xa3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&harr;"

    aput-object v3, v2, v4

    const-string v3, "&#8596;"

    aput-object v3, v2, v5

    const-string v3, "\u2194"

    aput-object v3, v2, v6

    const/16 v3, 0xa4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&crarr;"

    aput-object v3, v2, v4

    const-string v3, "&#8629;"

    aput-object v3, v2, v5

    const-string v3, "\u21b5"

    aput-object v3, v2, v6

    const/16 v3, 0xa5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lArr;"

    aput-object v3, v2, v4

    const-string v3, "&#8656;"

    aput-object v3, v2, v5

    const-string v3, "\u21d0"

    aput-object v3, v2, v6

    const/16 v3, 0xa6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&uArr;"

    aput-object v3, v2, v4

    const-string v3, "&#8657;"

    aput-object v3, v2, v5

    const-string v3, "\u21d1"

    aput-object v3, v2, v6

    const/16 v3, 0xa7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rArr;"

    aput-object v3, v2, v4

    const-string v3, "&#8658;"

    aput-object v3, v2, v5

    const-string v3, "\u21d2"

    aput-object v3, v2, v6

    const/16 v3, 0xa8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&dArr;"

    aput-object v3, v2, v4

    const-string v3, "&#8659;"

    aput-object v3, v2, v5

    const-string v3, "\u21d3"

    aput-object v3, v2, v6

    const/16 v3, 0xa9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&hArr;"

    aput-object v3, v2, v4

    const-string v3, "&#8660;"

    aput-object v3, v2, v5

    const-string v3, "\u21d4"

    aput-object v3, v2, v6

    const/16 v3, 0xaa

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&forall;"

    aput-object v3, v2, v4

    const-string v3, "&#8704;"

    aput-object v3, v2, v5

    const-string v3, "\u2200"

    aput-object v3, v2, v6

    const/16 v3, 0xab

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&part;"

    aput-object v3, v2, v4

    const-string v3, "&#8706;"

    aput-object v3, v2, v5

    const-string v3, "\u2202"

    aput-object v3, v2, v6

    const/16 v3, 0xac

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&exist;"

    aput-object v3, v2, v4

    const-string v3, "&#8707;"

    aput-object v3, v2, v5

    const-string v3, "\u2203"

    aput-object v3, v2, v6

    const/16 v3, 0xad

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&empty;"

    aput-object v3, v2, v4

    const-string v3, "&#8709;"

    aput-object v3, v2, v5

    const-string v3, "\u2205"

    aput-object v3, v2, v6

    const/16 v3, 0xae

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&nabla;"

    aput-object v3, v2, v4

    const-string v3, "&#8711;"

    aput-object v3, v2, v5

    const-string v3, "\u2207"

    aput-object v3, v2, v6

    const/16 v3, 0xaf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&isin;"

    aput-object v3, v2, v4

    const-string v3, "&#8712;"

    aput-object v3, v2, v5

    const-string v3, "\u2208"

    aput-object v3, v2, v6

    const/16 v3, 0xb0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&notin;"

    aput-object v3, v2, v4

    const-string v3, "&#8713;"

    aput-object v3, v2, v5

    const-string v3, "\u2209"

    aput-object v3, v2, v6

    const/16 v3, 0xb1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ni;"

    aput-object v3, v2, v4

    const-string v3, "&#8715;"

    aput-object v3, v2, v5

    const-string v3, "\u220b"

    aput-object v3, v2, v6

    const/16 v3, 0xb2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&prod;"

    aput-object v3, v2, v4

    const-string v3, "&#8719;"

    aput-object v3, v2, v5

    const-string v3, "\u220f"

    aput-object v3, v2, v6

    const/16 v3, 0xb3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sum;"

    aput-object v3, v2, v4

    const-string v3, "&#8721;"

    aput-object v3, v2, v5

    const-string v3, "\u2211"

    aput-object v3, v2, v6

    const/16 v3, 0xb4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&minus;"

    aput-object v3, v2, v4

    const-string v3, "&#8722;"

    aput-object v3, v2, v5

    const-string v3, "\u2212"

    aput-object v3, v2, v6

    const/16 v3, 0xb5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lowast;"

    aput-object v3, v2, v4

    const-string v3, "&#8727;"

    aput-object v3, v2, v5

    const-string v3, "\u2217"

    aput-object v3, v2, v6

    const/16 v3, 0xb6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&radic;"

    aput-object v3, v2, v4

    const-string v3, "&#8730;"

    aput-object v3, v2, v5

    const-string v3, "\u221a"

    aput-object v3, v2, v6

    const/16 v3, 0xb7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&prop;"

    aput-object v3, v2, v4

    const-string v3, "&#8733;"

    aput-object v3, v2, v5

    const-string v3, "\u221d"

    aput-object v3, v2, v6

    const/16 v3, 0xb8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&infin;"

    aput-object v3, v2, v4

    const-string v3, "&#8734;"

    aput-object v3, v2, v5

    const-string v3, "\u221e"

    aput-object v3, v2, v6

    const/16 v3, 0xb9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ang;"

    aput-object v3, v2, v4

    const-string v3, "&#8736;"

    aput-object v3, v2, v5

    const-string v3, "\u2220"

    aput-object v3, v2, v6

    const/16 v3, 0xba

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&and;"

    aput-object v3, v2, v4

    const-string v3, "&#8743;"

    aput-object v3, v2, v5

    const-string v3, "\u2227"

    aput-object v3, v2, v6

    const/16 v3, 0xbb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&or;"

    aput-object v3, v2, v4

    const-string v3, "&#8744;"

    aput-object v3, v2, v5

    const-string v3, "\u2228"

    aput-object v3, v2, v6

    const/16 v3, 0xbc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&cap;"

    aput-object v3, v2, v4

    const-string v3, "&#8745;"

    aput-object v3, v2, v5

    const-string v3, "\u2229"

    aput-object v3, v2, v6

    const/16 v3, 0xbd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&cup;"

    aput-object v3, v2, v4

    const-string v3, "&#8746;"

    aput-object v3, v2, v5

    const-string v3, "\u222a"

    aput-object v3, v2, v6

    const/16 v3, 0xbe

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&int;"

    aput-object v3, v2, v4

    const-string v3, "&#8747;"

    aput-object v3, v2, v5

    const-string v3, "\u222b"

    aput-object v3, v2, v6

    const/16 v3, 0xbf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&there4;"

    aput-object v3, v2, v4

    const-string v3, "&#8756;"

    aput-object v3, v2, v5

    const-string v3, "\u2234"

    aput-object v3, v2, v6

    const/16 v3, 0xc0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sim;"

    aput-object v3, v2, v4

    const-string v3, "&#8764;"

    aput-object v3, v2, v5

    const-string v3, "\u223c"

    aput-object v3, v2, v6

    const/16 v3, 0xc1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&cong;"

    aput-object v3, v2, v4

    const-string v3, "&#8773;"

    aput-object v3, v2, v5

    const-string v3, "\u2245"

    aput-object v3, v2, v6

    const/16 v3, 0xc2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&asymp;"

    aput-object v3, v2, v4

    const-string v3, "&#8776;"

    aput-object v3, v2, v5

    const-string v3, "\u2248"

    aput-object v3, v2, v6

    const/16 v3, 0xc3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ne;"

    aput-object v3, v2, v4

    const-string v3, "&#8800;"

    aput-object v3, v2, v5

    const-string v3, "\u2260"

    aput-object v3, v2, v6

    const/16 v3, 0xc4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&equiv;"

    aput-object v3, v2, v4

    const-string v3, "&#8801;"

    aput-object v3, v2, v5

    const-string v3, "\u2261"

    aput-object v3, v2, v6

    const/16 v3, 0xc5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&le;"

    aput-object v3, v2, v4

    const-string v3, "&#8804;"

    aput-object v3, v2, v5

    const-string v3, "\u2264"

    aput-object v3, v2, v6

    const/16 v3, 0xc6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ge;"

    aput-object v3, v2, v4

    const-string v3, "&#8805;"

    aput-object v3, v2, v5

    const-string v3, "\u2265"

    aput-object v3, v2, v6

    const/16 v3, 0xc7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sub;"

    aput-object v3, v2, v4

    const-string v3, "&#8834;"

    aput-object v3, v2, v5

    const-string v3, "\u2282"

    aput-object v3, v2, v6

    const/16 v3, 0xc8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sup;"

    aput-object v3, v2, v4

    const-string v3, "&#8835;"

    aput-object v3, v2, v5

    const-string v3, "\u2283"

    aput-object v3, v2, v6

    const/16 v3, 0xc9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sube;"

    aput-object v3, v2, v4

    const-string v3, "&#8838;"

    aput-object v3, v2, v5

    const-string v3, "\u2286"

    aput-object v3, v2, v6

    const/16 v3, 0xca

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&supe;"

    aput-object v3, v2, v4

    const-string v3, "&#8839;"

    aput-object v3, v2, v5

    const-string v3, "\u2287"

    aput-object v3, v2, v6

    const/16 v3, 0xcb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&oplus;"

    aput-object v3, v2, v4

    const-string v3, "&#8853;"

    aput-object v3, v2, v5

    const-string v3, "\u2295"

    aput-object v3, v2, v6

    const/16 v3, 0xcc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&otimes;"

    aput-object v3, v2, v4

    const-string v3, "&#8855;"

    aput-object v3, v2, v5

    const-string v3, "\u2297"

    aput-object v3, v2, v6

    const/16 v3, 0xcd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&perp;"

    aput-object v3, v2, v4

    const-string v3, "&#8869;"

    aput-object v3, v2, v5

    const-string v3, "\u22a5"

    aput-object v3, v2, v6

    const/16 v3, 0xce

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sdot;"

    aput-object v3, v2, v4

    const-string v3, "&#8901;"

    aput-object v3, v2, v5

    const-string v3, "\u22c5"

    aput-object v3, v2, v6

    const/16 v3, 0xcf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lceil;"

    aput-object v3, v2, v4

    const-string v3, "&#8968;"

    aput-object v3, v2, v5

    const-string v3, "\u2308"

    aput-object v3, v2, v6

    const/16 v3, 0xd0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rceil;"

    aput-object v3, v2, v4

    const-string v3, "&#8969;"

    aput-object v3, v2, v5

    const-string v3, "\u2309"

    aput-object v3, v2, v6

    const/16 v3, 0xd1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lfloor;"

    aput-object v3, v2, v4

    const-string v3, "&#8970;"

    aput-object v3, v2, v5

    const-string v3, "\u230a"

    aput-object v3, v2, v6

    const/16 v3, 0xd2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rfloor;"

    aput-object v3, v2, v4

    const-string v3, "&#8971;"

    aput-object v3, v2, v5

    const-string v3, "\u230b"

    aput-object v3, v2, v6

    const/16 v3, 0xd3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lang;"

    aput-object v3, v2, v4

    const-string v3, "&#9001;"

    aput-object v3, v2, v5

    const-string v3, "\u2329"

    aput-object v3, v2, v6

    const/16 v3, 0xd4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rang;"

    aput-object v3, v2, v4

    const-string v3, "&#9002;"

    aput-object v3, v2, v5

    const-string v3, "\u232a"

    aput-object v3, v2, v6

    const/16 v3, 0xd5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&loz;"

    aput-object v3, v2, v4

    const-string v3, "&#9674;"

    aput-object v3, v2, v5

    const-string v3, "\u25ca"

    aput-object v3, v2, v6

    const/16 v3, 0xd6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&spades;"

    aput-object v3, v2, v4

    const-string v3, "&#9824;"

    aput-object v3, v2, v5

    const-string v3, "\u2660"

    aput-object v3, v2, v6

    const/16 v3, 0xd7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&clubs;"

    aput-object v3, v2, v4

    const-string v3, "&#9827;"

    aput-object v3, v2, v5

    const-string v3, "\u2663"

    aput-object v3, v2, v6

    const/16 v3, 0xd8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&hearts;"

    aput-object v3, v2, v4

    const-string v3, "&#9829;"

    aput-object v3, v2, v5

    const-string v3, "\u2665"

    aput-object v3, v2, v6

    const/16 v3, 0xd9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&diams;"

    aput-object v3, v2, v4

    const-string v3, "&#9830;"

    aput-object v3, v2, v5

    const-string v3, "\u2666"

    aput-object v3, v2, v6

    const/16 v3, 0xda

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&quot;"

    aput-object v3, v2, v4

    const-string v3, "&#34;"

    aput-object v3, v2, v5

    const-string v3, "\""

    aput-object v3, v2, v6

    const/16 v3, 0xdb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&amp;"

    aput-object v3, v2, v4

    const-string v3, "&#38;"

    aput-object v3, v2, v5

    const-string v3, "&"

    aput-object v3, v2, v6

    const/16 v3, 0xdc

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lt;"

    aput-object v3, v2, v4

    const-string v3, "&#60;"

    aput-object v3, v2, v5

    const-string v3, "<"

    aput-object v3, v2, v6

    const/16 v3, 0xdd

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&gt;"

    aput-object v3, v2, v4

    const-string v3, "&#62;"

    aput-object v3, v2, v5

    const-string v3, ">"

    aput-object v3, v2, v6

    const/16 v3, 0xde

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&OElig;"

    aput-object v3, v2, v4

    const-string v3, "&#338;"

    aput-object v3, v2, v5

    const-string v3, "\u0152"

    aput-object v3, v2, v6

    const/16 v3, 0xdf

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&oelig;"

    aput-object v3, v2, v4

    const-string v3, "&#339;"

    aput-object v3, v2, v5

    const-string v3, "\u0153"

    aput-object v3, v2, v6

    const/16 v3, 0xe0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Scaron;"

    aput-object v3, v2, v4

    const-string v3, "&#352;"

    aput-object v3, v2, v5

    const-string v3, "\u0160"

    aput-object v3, v2, v6

    const/16 v3, 0xe1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&scaron;"

    aput-object v3, v2, v4

    const-string v3, "&#353;"

    aput-object v3, v2, v5

    const-string v3, "\u0161"

    aput-object v3, v2, v6

    const/16 v3, 0xe2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Yuml;"

    aput-object v3, v2, v4

    const-string v3, "&#376;"

    aput-object v3, v2, v5

    const-string v3, "\u0178"

    aput-object v3, v2, v6

    const/16 v3, 0xe3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&circ;"

    aput-object v3, v2, v4

    const-string v3, "&#710;"

    aput-object v3, v2, v5

    const-string v3, "\u02c6"

    aput-object v3, v2, v6

    const/16 v3, 0xe4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&tilde;"

    aput-object v3, v2, v4

    const-string v3, "&#732;"

    aput-object v3, v2, v5

    const-string v3, "\u02dc"

    aput-object v3, v2, v6

    const/16 v3, 0xe5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ensp;"

    aput-object v3, v2, v4

    const-string v3, "&#8194;"

    aput-object v3, v2, v5

    const-string v3, "\u2002"

    aput-object v3, v2, v6

    const/16 v3, 0xe6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&emsp;"

    aput-object v3, v2, v4

    const-string v3, "&#8195;"

    aput-object v3, v2, v5

    const-string v3, "\u2003"

    aput-object v3, v2, v6

    const/16 v3, 0xe7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&thinsp;"

    aput-object v3, v2, v4

    const-string v3, "&#8201;"

    aput-object v3, v2, v5

    const-string v3, "\u2009"

    aput-object v3, v2, v6

    const/16 v3, 0xe8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&zwnj;"

    aput-object v3, v2, v4

    const-string v3, "&#8204;"

    aput-object v3, v2, v5

    const-string v3, "\u200c"

    aput-object v3, v2, v6

    const/16 v3, 0xe9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&zwj;"

    aput-object v3, v2, v4

    const-string v3, "&#8205;"

    aput-object v3, v2, v5

    const-string v3, "\u200d"

    aput-object v3, v2, v6

    const/16 v3, 0xea

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lrm;"

    aput-object v3, v2, v4

    const-string v3, "&#8206;"

    aput-object v3, v2, v5

    const-string v3, "\u200e"

    aput-object v3, v2, v6

    const/16 v3, 0xeb

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rlm;"

    aput-object v3, v2, v4

    const-string v3, "&#8207;"

    aput-object v3, v2, v5

    const-string v3, "\u200f"

    aput-object v3, v2, v6

    const/16 v3, 0xec

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ndash;"

    aput-object v3, v2, v4

    const-string v3, "&#8211;"

    aput-object v3, v2, v5

    const-string v3, "\u2013"

    aput-object v3, v2, v6

    const/16 v3, 0xed

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&mdash;"

    aput-object v3, v2, v4

    const-string v3, "&#8212;"

    aput-object v3, v2, v5

    const-string v3, "\u2014"

    aput-object v3, v2, v6

    const/16 v3, 0xee

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lsquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8216;"

    aput-object v3, v2, v5

    const-string v3, "\u2018"

    aput-object v3, v2, v6

    const/16 v3, 0xef

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rsquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8217;"

    aput-object v3, v2, v5

    const-string v3, "\u2019"

    aput-object v3, v2, v6

    const/16 v3, 0xf0

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&sbquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8218;"

    aput-object v3, v2, v5

    const-string v3, "\u201a"

    aput-object v3, v2, v6

    const/16 v3, 0xf1

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&ldquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8220;"

    aput-object v3, v2, v5

    const-string v3, "\u201c"

    aput-object v3, v2, v6

    const/16 v3, 0xf2

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rdquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8221;"

    aput-object v3, v2, v5

    const-string v3, "\u201d"

    aput-object v3, v2, v6

    const/16 v3, 0xf3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&bdquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8222;"

    aput-object v3, v2, v5

    const-string v3, "\u201e"

    aput-object v3, v2, v6

    const/16 v3, 0xf4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&dagger;"

    aput-object v3, v2, v4

    const-string v3, "&#8224;"

    aput-object v3, v2, v5

    const-string v3, "\u2020"

    aput-object v3, v2, v6

    const/16 v3, 0xf5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&Dagger;"

    aput-object v3, v2, v4

    const-string v3, "&#8225;"

    aput-object v3, v2, v5

    const-string v3, "\u2021"

    aput-object v3, v2, v6

    const/16 v3, 0xf6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&permil;"

    aput-object v3, v2, v4

    const-string v3, "&#8240;"

    aput-object v3, v2, v5

    const-string v3, "\u2030"

    aput-object v3, v2, v6

    const/16 v3, 0xf7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&lsaquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8249;"

    aput-object v3, v2, v5

    const-string v3, "\u2039"

    aput-object v3, v2, v6

    const/16 v3, 0xf8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "&rsaquo;"

    aput-object v3, v2, v4

    const-string v3, "&#8250;"

    aput-object v3, v2, v5

    const-string v3, "\u203a"

    aput-object v3, v2, v6

    const/16 v3, 0xf9

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "&euro;"

    aput-object v2, v1, v4

    const-string v2, "&#8364;"

    aput-object v2, v1, v5

    const-string v2, "\u20ac"

    aput-object v2, v1, v6

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    .line 447
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 448
    sget-object v7, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    aget-object v8, v3, v6

    aget-object v9, v3, v4

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v7, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v8, v3, v4

    aget-object v9, v3, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v7, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    aget-object v8, v3, v5

    aget-object v3, v3, v6

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Ltwitter4j/HTMLEntity;->escape(Ljava/lang/StringBuilder;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escape(Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 35
    sget-object v1, Ltwitter4j/HTMLEntity;->entityEscapeMap:Ljava/util/Map;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Ltwitter4j/HTMLEntity;->unescape(Ljava/lang/StringBuilder;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static unescape(Ljava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const-string v1, "&"

    .line 61
    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ";"

    .line 65
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 67
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v3, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0, v0, v2, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :cond_0
    array-length v1, p1

    :goto_0
    add-int/2addr v1, v0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 85
    :cond_1
    array-length v2, p2

    :goto_1
    add-int/2addr v1, v2

    if-nez p3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 86
    :cond_2
    array-length v2, p3

    :goto_2
    add-int/2addr v1, v2

    if-nez p4, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 87
    :cond_3
    array-length v2, p4

    :goto_3
    add-int/2addr v1, v2

    .line 89
    new-array v1, v1, [Ltwitter4j/EntityIndex;

    if-eqz p1, :cond_4

    .line 92
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length p1, p1

    add-int/2addr p1, v0

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eqz p2, :cond_5

    .line 97
    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    array-length p2, p2

    add-int/2addr p1, p2

    :cond_5
    if-eqz p3, :cond_6

    .line 102
    array-length p2, p3

    invoke-static {p3, v0, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    array-length p2, p3

    add-int/2addr p1, p2

    :cond_6
    if-eqz p4, :cond_7

    .line 107
    array-length p2, p4

    invoke-static {p4, v0, v1, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    :cond_7
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 v2, 0x1

    .line 120
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p3, v3, :cond_d

    .line 121
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_a

    const-string v4, ";"

    .line 123
    invoke-virtual {p0, v4, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_9

    add-int/lit8 v5, v4, 0x1

    .line 125
    invoke-virtual {p0, p3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 126
    sget-object v6, Ltwitter4j/HTMLEntity;->escapeEntityMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 128
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1

    goto :goto_7

    .line 132
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 135
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 138
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    move v4, p3

    const/4 p3, 0x0

    .line 140
    :goto_7
    array-length v3, v1

    if-ge p4, v3, :cond_c

    if-eqz v2, :cond_b

    .line 142
    aget-object v3, v1, p4

    invoke-virtual {v3}, Ltwitter4j/EntityIndex;->getStart()I

    move-result v3

    add-int/2addr p3, v4

    if-ne v3, p3, :cond_c

    .line 143
    aget-object p3, v1, p4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {p3, v2}, Ltwitter4j/EntityIndex;->setStart(I)V

    const/4 v2, 0x0

    goto :goto_8

    .line 146
    :cond_b
    aget-object v3, v1, p4

    invoke-virtual {v3}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result v3

    add-int/2addr p3, v4

    if-ne v3, p3, :cond_c

    .line 147
    aget-object p3, v1, p4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {p3, v2}, Ltwitter4j/EntityIndex;->setEnd(I)V

    add-int/lit8 p4, p4, 0x1

    const/4 v2, 0x1

    :cond_c
    :goto_8
    add-int/lit8 p3, v4, 0x1

    goto :goto_5

    .line 154
    :cond_d
    array-length p2, v1

    if-ge p4, p2, :cond_e

    .line 155
    aget-object p2, v1, p4

    invoke-virtual {p2}, Ltwitter4j/EntityIndex;->getEnd()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_e

    .line 156
    aget-object p0, v1, p4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ltwitter4j/EntityIndex;->setEnd(I)V

    .line 160
    :cond_e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
