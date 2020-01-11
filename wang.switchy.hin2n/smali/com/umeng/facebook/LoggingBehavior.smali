.class public final enum Lcom/umeng/facebook/LoggingBehavior;
.super Ljava/lang/Enum;
.source "LoggingBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/LoggingBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum APP_EVENTS:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum CACHE:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum DEVELOPER_ERRORS:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum INCLUDE_ACCESS_TOKENS:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum INCLUDE_RAW_RESPONSES:Lcom/umeng/facebook/LoggingBehavior;

.field public static final enum REQUESTS:Lcom/umeng/facebook/LoggingBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 32
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "REQUESTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->REQUESTS:Lcom/umeng/facebook/LoggingBehavior;

    .line 37
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "INCLUDE_ACCESS_TOKENS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/umeng/facebook/LoggingBehavior;

    .line 41
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "INCLUDE_RAW_RESPONSES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/umeng/facebook/LoggingBehavior;

    .line 45
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "CACHE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->CACHE:Lcom/umeng/facebook/LoggingBehavior;

    .line 49
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "APP_EVENTS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->APP_EVENTS:Lcom/umeng/facebook/LoggingBehavior;

    .line 54
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "DEVELOPER_ERRORS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/umeng/facebook/LoggingBehavior;

    .line 60
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "GRAPH_API_DEBUG_WARNING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    .line 67
    new-instance v0, Lcom/umeng/facebook/LoggingBehavior;

    const-string v1, "GRAPH_API_DEBUG_INFO"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/umeng/facebook/LoggingBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    const/16 v0, 0x8

    .line 28
    new-array v0, v0, [Lcom/umeng/facebook/LoggingBehavior;

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->REQUESTS:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->CACHE:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->APP_EVENTS:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/umeng/facebook/LoggingBehavior;

    aput-object v1, v0, v9

    sput-object v0, Lcom/umeng/facebook/LoggingBehavior;->$VALUES:[Lcom/umeng/facebook/LoggingBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/LoggingBehavior;
    .locals 1

    .line 28
    const-class v0, Lcom/umeng/facebook/LoggingBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/LoggingBehavior;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/LoggingBehavior;
    .locals 1

    .line 28
    sget-object v0, Lcom/umeng/facebook/LoggingBehavior;->$VALUES:[Lcom/umeng/facebook/LoggingBehavior;

    invoke-virtual {v0}, [Lcom/umeng/facebook/LoggingBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/LoggingBehavior;

    return-object v0
.end method
