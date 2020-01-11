.class public Lcom/umeng/facebook/internal/WebDialog$Builder;
.super Ljava/lang/Object;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Lcom/umeng/facebook/AccessToken;

.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private theme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    invoke-static {}, Lcom/umeng/facebook/AccessToken;->getCurrentAccessToken()Lcom/umeng/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 604
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-nez v0, :cond_1

    .line 605
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iput-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    goto :goto_0

    .line 609
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string p2, "Attempted to create a builder without a valid access token or a valid default Application ID."

    invoke-direct {p1, p2}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 614
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 628
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "applicationId"

    .line 630
    invoke-static {p2, v0}, Lcom/umeng/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iput-object p2, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    .line 633
    invoke-direct {p0, p1, p3, p4}, Lcom/umeng/facebook/internal/WebDialog$Builder;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    .line 701
    iput-object p2, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 703
    iput-object p3, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    goto :goto_0

    .line 705
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/internal/WebDialog;
    .locals 9

    .line 665
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->accessToken:Lcom/umeng/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 668
    invoke-virtual {v2}, Lcom/umeng/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->accessToken:Lcom/umeng/facebook/AccessToken;

    .line 671
    invoke-virtual {v2}, Lcom/umeng/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_0
    new-instance v0, Lcom/umeng/facebook/internal/WebDialog;

    iget-object v4, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->action:Ljava/lang/String;

    iget-object v6, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    iget v7, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->theme:I

    iget-object v8, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->listener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/umeng/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)V

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getListener()Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->listener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)Lcom/umeng/facebook/internal/WebDialog$Builder;
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->listener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    return-object p0
.end method

.method public setTheme(I)Lcom/umeng/facebook/internal/WebDialog$Builder;
    .locals 0

    .line 643
    iput p1, p0, Lcom/umeng/facebook/internal/WebDialog$Builder;->theme:I

    return-object p0
.end method
