.class public final enum Lcom/umeng/facebook/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/HttpMethod;

.field public static final enum DELETE:Lcom/umeng/facebook/HttpMethod;

.field public static final enum GET:Lcom/umeng/facebook/HttpMethod;

.field public static final enum POST:Lcom/umeng/facebook/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Lcom/umeng/facebook/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    .line 35
    new-instance v0, Lcom/umeng/facebook/HttpMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    .line 40
    new-instance v0, Lcom/umeng/facebook/HttpMethod;

    const-string v1, "DELETE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/umeng/facebook/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/HttpMethod;->DELETE:Lcom/umeng/facebook/HttpMethod;

    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Lcom/umeng/facebook/HttpMethod;

    sget-object v1, Lcom/umeng/facebook/HttpMethod;->GET:Lcom/umeng/facebook/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/HttpMethod;->POST:Lcom/umeng/facebook/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/facebook/HttpMethod;->DELETE:Lcom/umeng/facebook/HttpMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/facebook/HttpMethod;->$VALUES:[Lcom/umeng/facebook/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/HttpMethod;
    .locals 1

    .line 26
    const-class v0, Lcom/umeng/facebook/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/HttpMethod;
    .locals 1

    .line 26
    sget-object v0, Lcom/umeng/facebook/HttpMethod;->$VALUES:[Lcom/umeng/facebook/HttpMethod;

    invoke-virtual {v0}, [Lcom/umeng/facebook/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/HttpMethod;

    return-object v0
.end method
