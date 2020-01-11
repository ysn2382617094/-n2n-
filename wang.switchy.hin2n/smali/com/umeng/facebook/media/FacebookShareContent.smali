.class public Lcom/umeng/facebook/media/FacebookShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "FacebookShareContent.java"


# static fields
.field public static final LINK:I = 0x3

.field public static final PICTURE:I = 0x1

.field public static final VIDEO:I = 0x2


# instance fields
.field private Share_Type:I


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/umeng/facebook/media/FacebookShareContent;->Share_Type:I

    .line 38
    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast p1, Lcom/umeng/socialize/media/UMVideo;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/media/FacebookShareContent;->setVideo(Lcom/umeng/socialize/media/UMVideo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()Lcom/umeng/facebook/share/model/ShareContent;
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getShare_Type()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/facebook/media/FacebookShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/umeng/facebook/media/FacebookShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asUrlImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/umeng/socialize/utils/UmengText$FACEBOOK;->FACEBOOK_NET_SUPPORT:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SLog;->E(Ljava/lang/String;)V

    const-string v0, "http://mobile.umeng.com/images/pic/home/social/img-1.png"

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    :goto_0
    new-instance v4, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v4}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareContent$Builder;

    move-result-object v1

    check-cast v1, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {v1, v2}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/umeng/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/ShareVideo$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/umeng/facebook/share/model/ShareVideo;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/umeng/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {}, Lcom/umeng/socialize/utils/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/SocializeUtils;->insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    :cond_1
    new-instance v0, Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/SharePhoto$Builder;->build()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/umeng/facebook/share/model/SharePhoto;)Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/umeng/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShare_Type()I
    .locals 4

    .line 43
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 44
    iput v1, p0, Lcom/umeng/facebook/media/FacebookShareContent;->Share_Type:I

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getmStyle()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    .line 47
    iput v3, p0, Lcom/umeng/facebook/media/FacebookShareContent;->Share_Type:I

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getmStyle()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/umeng/facebook/media/FacebookShareContent;->getmStyle()I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/umeng/facebook/media/FacebookShareContent;->Share_Type:I

    .line 51
    :cond_3
    :goto_0
    iget v0, p0, Lcom/umeng/facebook/media/FacebookShareContent;->Share_Type:I

    return v0
.end method
