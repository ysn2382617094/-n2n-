.class public Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;
.super Ljava/lang/Object;
.source "ShareToMessengerParamsBuilder.java"


# instance fields
.field private mExternalUri:Landroid/net/Uri;

.field private mMetaData:Ljava/lang/String;

.field private final mMimeType:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mUri:Landroid/net/Uri;

    .line 37
    iput-object p2, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/messenger/ShareToMessengerParams;
    .locals 1

    .line 120
    new-instance v0, Lcom/umeng/facebook/messenger/ShareToMessengerParams;

    invoke-direct {v0, p0}, Lcom/umeng/facebook/messenger/ShareToMessengerParams;-><init>(Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;)V

    return-object v0
.end method

.method public getExternalUri()Landroid/net/Uri;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mExternalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mMetaData:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setExternalUri(Landroid/net/Uri;)Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mExternalUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMetaData(Ljava/lang/String;)Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/umeng/facebook/messenger/ShareToMessengerParamsBuilder;->mMetaData:Ljava/lang/String;

    return-object p0
.end method
