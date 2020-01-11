.class Lcom/umeng/facebook/login/LoginFragment$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/umeng/facebook/login/LoginClient$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/login/LoginFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/login/LoginFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment$1;->this$0:Lcom/umeng/facebook/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/umeng/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment$1;->this$0:Lcom/umeng/facebook/login/LoginFragment;

    invoke-static {v0, p1}, Lcom/umeng/facebook/login/LoginFragment;->access$000(Lcom/umeng/facebook/login/LoginFragment;Lcom/umeng/facebook/login/LoginClient$Result;)V

    return-void
.end method
