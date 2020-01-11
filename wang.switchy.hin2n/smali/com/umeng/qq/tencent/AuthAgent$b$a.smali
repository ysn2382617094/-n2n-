.class abstract Lcom/umeng/qq/tencent/AuthAgent$b$a;
.super Ljava/lang/Object;
.source "AuthAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/qq/tencent/AuthAgent$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field d:Landroid/app/Dialog;

.field final synthetic this$1:Lcom/umeng/qq/tencent/AuthAgent$b;


# direct methods
.method constructor <init>(Lcom/umeng/qq/tencent/AuthAgent$b;Landroid/app/Dialog;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$a;->this$1:Lcom/umeng/qq/tencent/AuthAgent$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent$b$a;->d:Landroid/app/Dialog;

    return-void
.end method
