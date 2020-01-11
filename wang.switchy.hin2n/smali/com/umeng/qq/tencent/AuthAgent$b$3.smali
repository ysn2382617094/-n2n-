.class Lcom/umeng/qq/tencent/AuthAgent$b$3;
.super Ljava/lang/Object;
.source "AuthAgent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/umeng/qq/tencent/AuthAgent$b;Lcom/umeng/qq/tencent/IUiListener;Ljava/lang/Object;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->this$1:Lcom/umeng/qq/tencent/AuthAgent$b;

    iput-object p2, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    iput-object p3, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->val$var3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->val$var2:Lcom/umeng/qq/tencent/IUiListener;

    iget-object v0, p0, Lcom/umeng/qq/tencent/AuthAgent$b$3;->val$var3:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/umeng/qq/tencent/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
