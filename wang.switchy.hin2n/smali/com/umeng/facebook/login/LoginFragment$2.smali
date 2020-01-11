.class Lcom/umeng/facebook/login/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/umeng/facebook/login/LoginClient$BackgroundProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/login/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/login/LoginFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/login/LoginFragment;Landroid/view/View;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginFragment$2;->this$0:Lcom/umeng/facebook/login/LoginFragment;

    iput-object p2, p0, Lcom/umeng/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundProcessingStarted()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginFragment$2;->this$0:Lcom/umeng/facebook/login/LoginFragment;

    invoke-static {v1}, Lcom/umeng/facebook/login/LoginFragment;->access$100(Lcom/umeng/facebook/login/LoginFragment;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v1

    const-string v2, "com_facebook_login_activity_progress_bar"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBackgroundProcessingStopped()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginFragment$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginFragment$2;->this$0:Lcom/umeng/facebook/login/LoginFragment;

    invoke-static {v1}, Lcom/umeng/facebook/login/LoginFragment;->access$100(Lcom/umeng/facebook/login/LoginFragment;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v1

    const-string v2, "com_facebook_login_activity_progress_bar"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->id(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
