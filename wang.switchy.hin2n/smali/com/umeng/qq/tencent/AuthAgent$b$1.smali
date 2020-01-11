.class Lcom/umeng/qq/tencent/AuthAgent$b$1;
.super Lcom/umeng/qq/tencent/AuthAgent$b$a;
.source "AuthAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/qq/tencent/AuthAgent$b;->a(Ljava/lang/String;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/qq/tencent/AuthAgent$b;

.field final synthetic val$var2:Lcom/umeng/qq/tencent/IUiListener;

.field final synthetic val$var3:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/umeng/qq/tencent/AuthAgent$b;Landroid/app/Dialog;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->this$1:Lcom/umeng/qq/tencent/AuthAgent$b;

    iput-object p3, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    iput-object p4, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->val$var3:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/umeng/qq/tencent/AuthAgent$b$a;-><init>(Lcom/umeng/qq/tencent/AuthAgent$b;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->d:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b$1;->val$var3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
