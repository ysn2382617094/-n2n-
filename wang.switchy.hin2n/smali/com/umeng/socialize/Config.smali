.class public Lcom/umeng/socialize/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static Descriptor:Ljava/lang/String; = null

.field public static EntityKey:Ljava/lang/String; = "-1"

.field public static EntityName:Ljava/lang/String; = "share"

.field public static KaKaoLoginType:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static LinkedInProfileScope:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static LinkedInShareCode:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINIPTOGRAM_TYPE_RELEASE:I = 0x0

.field public static MORE_TITLE:Ljava/lang/String; = null

.field public static OpenEditor:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static QQAPPNAME:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static QQWITHQZONE:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static SessionId:Ljava/lang/String;

.field private static a:I

.field public static appName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static connectionTimeOut:I

.field public static isFacebookRead:Z

.field public static isJumptoAppStore:Z

.field public static isNeedAuth:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static isUmengQQ:Ljava/lang/Boolean;

.field public static isUmengSina:Ljava/lang/Boolean;

.field public static isUmengWx:Ljava/lang/Boolean;

.field public static final mEncrypt:Z

.field public static readSocketTimeOut:I

.field public static shareType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/Config;->isUmengSina:Ljava/lang/Boolean;

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/Config;->isUmengWx:Ljava/lang/Boolean;

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/Config;->isUmengQQ:Ljava/lang/Boolean;

    const-string v0, "com.umeng.share"

    .line 12
    sput-object v0, Lcom/umeng/socialize/Config;->Descriptor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/umeng/socialize/Config;->SessionId:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    sput v0, Lcom/umeng/socialize/Config;->QQWITHQZONE:I

    const-string v0, ""

    .line 17
    sput-object v0, Lcom/umeng/socialize/Config;->QQAPPNAME:Ljava/lang/String;

    const-string v0, "native"

    .line 24
    sput-object v0, Lcom/umeng/socialize/Config;->shareType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    sput v0, Lcom/umeng/socialize/Config;->KaKaoLoginType:I

    const-string v1, "\u5206\u4eab"

    .line 31
    sput-object v1, Lcom/umeng/socialize/Config;->MORE_TITLE:Ljava/lang/String;

    .line 40
    sput v0, Lcom/umeng/socialize/Config;->LinkedInProfileScope:I

    .line 42
    sput v0, Lcom/umeng/socialize/Config;->LinkedInShareCode:I

    const/16 v1, 0x7530

    .line 44
    sput v1, Lcom/umeng/socialize/Config;->connectionTimeOut:I

    .line 45
    sput v1, Lcom/umeng/socialize/Config;->readSocketTimeOut:I

    .line 49
    sput-boolean v0, Lcom/umeng/socialize/Config;->isNeedAuth:Z

    .line 51
    sput-boolean v0, Lcom/umeng/socialize/Config;->isJumptoAppStore:Z

    .line 52
    sput-boolean v0, Lcom/umeng/socialize/Config;->isFacebookRead:Z

    .line 53
    sput v0, Lcom/umeng/socialize/Config;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMINITYPE()I
    .locals 1

    .line 63
    sget v0, Lcom/umeng/socialize/Config;->a:I

    return v0
.end method

.method public static setMiniPreView()V
    .locals 1

    const/4 v0, 0x2

    .line 59
    sput v0, Lcom/umeng/socialize/Config;->a:I

    return-void
.end method

.method public static setMiniTest()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    sput v0, Lcom/umeng/socialize/Config;->a:I

    return-void
.end method
