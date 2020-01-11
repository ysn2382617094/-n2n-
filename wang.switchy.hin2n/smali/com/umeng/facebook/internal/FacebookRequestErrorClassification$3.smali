.class synthetic Lcom/umeng/facebook/internal/FacebookRequestErrorClassification$3;
.super Ljava/lang/Object;
.source "FacebookRequestErrorClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/FacebookRequestErrorClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$umeng$facebook$FacebookRequestError$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    invoke-static {}, Lcom/umeng/facebook/FacebookRequestError$Category;->values()[Lcom/umeng/facebook/FacebookRequestError$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$umeng$facebook$FacebookRequestError$Category:[I

    :try_start_0
    sget-object v0, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$umeng$facebook$FacebookRequestError$Category:[I

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->OTHER:Lcom/umeng/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/umeng/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$umeng$facebook$FacebookRequestError$Category:[I

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->LOGIN_RECOVERABLE:Lcom/umeng/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/umeng/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/umeng/facebook/internal/FacebookRequestErrorClassification$3;->$SwitchMap$com$umeng$facebook$FacebookRequestError$Category:[I

    sget-object v1, Lcom/umeng/facebook/FacebookRequestError$Category;->TRANSIENT:Lcom/umeng/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/umeng/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
