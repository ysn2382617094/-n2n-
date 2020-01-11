.class public Lcom/umeng/qq/tencent/UiError;
.super Ljava/lang/Object;
.source "UiError.java"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/umeng/qq/tencent/UiError;->errorMessage:Ljava/lang/String;

    .line 13
    iput p1, p0, Lcom/umeng/qq/tencent/UiError;->errorCode:I

    .line 14
    iput-object p3, p0, Lcom/umeng/qq/tencent/UiError;->errorDetail:Ljava/lang/String;

    return-void
.end method
