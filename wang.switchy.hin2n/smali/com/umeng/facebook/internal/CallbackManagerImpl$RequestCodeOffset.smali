.class public final enum Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
.super Ljava/lang/Enum;
.source "CallbackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestCodeOffset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupCreate:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppGroupJoin:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum AppInvite:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum DeviceShare:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum GameRequest:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Like:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Message:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

.field public static final enum Share:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;


# instance fields
.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 93
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 94
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Share"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 95
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Message"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 96
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "Like"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 97
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "GameRequest"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 98
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppGroupCreate"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 99
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppGroupJoin"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 100
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "AppInvite"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 101
    new-instance v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const-string v1, "DeviceShare"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    const/16 v0, 0x9

    .line 92
    new-array v0, v0, [Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->GameRequest:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupCreate:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppGroupJoin:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->DeviceShare:Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    aput-object v1, v0, v10

    sput-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1

    .line 92
    const-class v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    .locals 1

    .line 92
    sget-object v0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->$VALUES:[Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, [Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    return-object v0
.end method


# virtual methods
.method public toRequestCode()I
    .locals 2

    .line 111
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getCallbackRequestCodeOffset()I

    move-result v0

    iget v1, p0, Lcom/umeng/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
