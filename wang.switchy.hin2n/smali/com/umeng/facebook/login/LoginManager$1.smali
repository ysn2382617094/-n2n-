.class Lcom/umeng/facebook/login/LoginManager$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/login/LoginManager;->registerCallback(Lcom/umeng/facebook/CallbackManager;Lcom/umeng/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/login/LoginManager;

.field final synthetic val$callback:Lcom/umeng/facebook/FacebookCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/login/LoginManager;Lcom/umeng/facebook/FacebookCallback;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginManager$1;->this$0:Lcom/umeng/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/umeng/facebook/login/LoginManager$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginManager$1;->this$0:Lcom/umeng/facebook/login/LoginManager;

    iget-object v1, p0, Lcom/umeng/facebook/login/LoginManager$1;->val$callback:Lcom/umeng/facebook/FacebookCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/umeng/facebook/FacebookCallback;)Z

    move-result p1

    return p1
.end method
