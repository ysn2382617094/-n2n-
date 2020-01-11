.class Lcom/umeng/facebook/internal/WebDialog$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/internal/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/internal/WebDialog;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$1;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 285
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$1;->this$0:Lcom/umeng/facebook/internal/WebDialog;

    invoke-virtual {p1}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    return-void
.end method
