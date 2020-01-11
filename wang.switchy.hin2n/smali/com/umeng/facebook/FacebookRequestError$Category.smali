.class public final enum Lcom/umeng/facebook/FacebookRequestError$Category;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/FacebookRequestError$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/FacebookRequestError$Category;

.field public static final enum LOGIN_RECOVERABLE:Lcom/umeng/facebook/FacebookRequestError$Category;

.field public static final enum OTHER:Lcom/umeng/facebook/FacebookRequestError$Category;

.field public static final enum TRANSIENT:Lcom/umeng/facebook/FacebookRequestError$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 492
    new-instance v0, Lcom/umeng/facebook/FacebookRequestError$Category;

    const-string v1, "LOGIN_RECOVERABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/umeng/facebook/FacebookRequestError$Category;

    .line 497
    new-instance v0, Lcom/umeng/facebook/FacebookRequestError$Category;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/FacebookRequestError$Category;->OTHER:Lcom/umeng/facebook/FacebookRequestError$Category;

    .line 502
    new-instance v0, Lcom/umeng/facebook/FacebookRequestError$Category;

    const-string v1, "TRANSIENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/umeng/facebook/FacebookRequestError$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/umeng/facebook/FacebookRequestError$Category;

    const/4 v0, 0x3

    .line 485
    new-array v0, v0, [Lcom/umeng/facebook/FacebookRequestError$Category;

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/umeng/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->OTHER:Lcom/umeng/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/umeng/facebook/FacebookRequestError$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/umeng/facebook/FacebookRequestError$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/FacebookRequestError$Category;
    .locals 1

    .line 485
    const-class v0, Lcom/umeng/facebook/FacebookRequestError$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/FacebookRequestError$Category;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/FacebookRequestError$Category;
    .locals 1

    .line 485
    sget-object v0, Lcom/umeng/facebook/FacebookRequestError$Category;->$VALUES:[Lcom/umeng/facebook/FacebookRequestError$Category;

    invoke-virtual {v0}, [Lcom/umeng/facebook/FacebookRequestError$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/FacebookRequestError$Category;

    return-object v0
.end method
