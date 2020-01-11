.class final Lcom/umeng/facebook/FacebookSdk$2;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/umeng/facebook/FacebookSdk$InitializeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/umeng/facebook/FacebookSdk$InitializeCallback;


# direct methods
.method constructor <init>(Lcom/umeng/facebook/FacebookSdk$InitializeCallback;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/umeng/facebook/FacebookSdk$2;->val$callback:Lcom/umeng/facebook/FacebookSdk$InitializeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/umeng/facebook/FacebookSdk$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 233
    invoke-static {}, Lcom/umeng/facebook/AccessTokenManager;->getInstance()Lcom/umeng/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/AccessTokenManager;->loadCurrentAccessToken()Z

    .line 234
    invoke-static {}, Lcom/umeng/facebook/ProfileManager;->getInstance()Lcom/umeng/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/ProfileManager;->loadCurrentProfile()Z

    .line 235
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/umeng/facebook/Profile;->getCurrentProfile()Lcom/umeng/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/umeng/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/FacebookSdk$2;->val$callback:Lcom/umeng/facebook/FacebookSdk$InitializeCallback;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/umeng/facebook/FacebookSdk$2;->val$callback:Lcom/umeng/facebook/FacebookSdk$InitializeCallback;

    invoke-interface {v0}, Lcom/umeng/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
