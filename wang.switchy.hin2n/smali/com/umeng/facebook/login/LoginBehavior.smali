.class public final enum Lcom/umeng/facebook/login/LoginBehavior;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/login/LoginBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum DEVICE_AUTH:Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum KATANA_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum NATIVE_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum NATIVE_WITH_FALLBACK:Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum WEB_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

.field public static final enum WEB_VIEW_ONLY:Lcom/umeng/facebook/login/LoginBehavior;


# instance fields
.field private final allowsCustomTabAuth:Z

.field private final allowsDeviceAuth:Z

.field private final allowsFacebookLiteAuth:Z

.field private final allowsGetTokenAuth:Z

.field private final allowsKatanaAuth:Z

.field private final allowsWebViewAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 31
    new-instance v9, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v1, "NATIVE_WITH_FALLBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v9, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/umeng/facebook/login/LoginBehavior;

    .line 37
    new-instance v0, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v11, "NATIVE_ONLY"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    .line 42
    new-instance v0, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v2, "KATANA_ONLY"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    .line 47
    new-instance v0, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v11, "WEB_ONLY"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    .line 52
    new-instance v0, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v2, "WEB_VIEW_ONLY"

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    .line 55
    new-instance v0, Lcom/umeng/facebook/login/LoginBehavior;

    const-string v11, "DEVICE_AUTH"

    const/4 v12, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/umeng/facebook/login/LoginBehavior;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [Lcom/umeng/facebook/login/LoginBehavior;

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->WEB_VIEW_ONLY:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/umeng/facebook/login/LoginBehavior;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/facebook/login/LoginBehavior;->$VALUES:[Lcom/umeng/facebook/login/LoginBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-boolean p3, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    .line 72
    iput-boolean p4, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    .line 73
    iput-boolean p5, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    .line 74
    iput-boolean p6, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    .line 75
    iput-boolean p7, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    .line 76
    iput-boolean p8, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/login/LoginBehavior;
    .locals 1

    .line 26
    const-class v0, Lcom/umeng/facebook/login/LoginBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/login/LoginBehavior;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/login/LoginBehavior;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/facebook/login/LoginBehavior;->$VALUES:[Lcom/umeng/facebook/login/LoginBehavior;

    invoke-virtual {v0}, [Lcom/umeng/facebook/login/LoginBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/login/LoginBehavior;

    return-object v0
.end method


# virtual methods
.method allowsCustomTabAuth()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsCustomTabAuth:Z

    return v0
.end method

.method allowsDeviceAuth()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsDeviceAuth:Z

    return v0
.end method

.method allowsFacebookLiteAuth()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsFacebookLiteAuth:Z

    return v0
.end method

.method allowsGetTokenAuth()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsGetTokenAuth:Z

    return v0
.end method

.method allowsKatanaAuth()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsKatanaAuth:Z

    return v0
.end method

.method allowsWebViewAuth()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/umeng/facebook/login/LoginBehavior;->allowsWebViewAuth:Z

    return v0
.end method