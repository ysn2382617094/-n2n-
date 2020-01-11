.class Lcom/umeng/facebook/login/LoginManager$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/umeng/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/login/LoginManager;->startLogin(Lcom/umeng/facebook/login/StartActivityDelegate;Lcom/umeng/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/login/LoginManager;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/umeng/facebook/login/LoginManager$3;->this$0:Lcom/umeng/facebook/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/umeng/facebook/login/LoginManager$3;->this$0:Lcom/umeng/facebook/login/LoginManager;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
