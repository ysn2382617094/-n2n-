.class public final enum Lcom/umeng/facebook/GraphResponse$PagingDirection;
.super Ljava/lang/Enum;
.source "GraphResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/GraphResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PagingDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/facebook/GraphResponse$PagingDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/facebook/GraphResponse$PagingDirection;

.field public static final enum NEXT:Lcom/umeng/facebook/GraphResponse$PagingDirection;

.field public static final enum PREVIOUS:Lcom/umeng/facebook/GraphResponse$PagingDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 172
    new-instance v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;

    const-string v1, "NEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/facebook/GraphResponse$PagingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/umeng/facebook/GraphResponse$PagingDirection;

    .line 176
    new-instance v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;

    const-string v1, "PREVIOUS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/umeng/facebook/GraphResponse$PagingDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;->PREVIOUS:Lcom/umeng/facebook/GraphResponse$PagingDirection;

    const/4 v0, 0x2

    .line 168
    new-array v0, v0, [Lcom/umeng/facebook/GraphResponse$PagingDirection;

    sget-object v1, Lcom/umeng/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/umeng/facebook/GraphResponse$PagingDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/facebook/GraphResponse$PagingDirection;->PREVIOUS:Lcom/umeng/facebook/GraphResponse$PagingDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;->$VALUES:[Lcom/umeng/facebook/GraphResponse$PagingDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/facebook/GraphResponse$PagingDirection;
    .locals 1

    .line 168
    const-class v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/facebook/GraphResponse$PagingDirection;

    return-object p0
.end method

.method public static values()[Lcom/umeng/facebook/GraphResponse$PagingDirection;
    .locals 1

    .line 168
    sget-object v0, Lcom/umeng/facebook/GraphResponse$PagingDirection;->$VALUES:[Lcom/umeng/facebook/GraphResponse$PagingDirection;

    invoke-virtual {v0}, [Lcom/umeng/facebook/GraphResponse$PagingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/facebook/GraphResponse$PagingDirection;

    return-object v0
.end method
