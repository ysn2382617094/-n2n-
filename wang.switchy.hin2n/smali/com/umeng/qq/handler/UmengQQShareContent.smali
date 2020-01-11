.class public Lcom/umeng/qq/handler/UmengQQShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "UmengQQShareContent.java"


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    return-void
.end method

.method private buildImageBundle()Landroid/os/Bundle;
    .locals 6

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 154
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_IMAGE_ERROR:Ljava/lang/String;

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 158
    :cond_1
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_0
    const-string v3, "summary"

    .line 161
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imageLocalUrl"

    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "req_type"

    const/4 v3, 0x5

    .line 163
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "error"

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private buildMusicBundle()Landroid/os/Bundle;
    .locals 8

    .line 120
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 125
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    move-object v2, v1

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    .line 129
    :cond_1
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 134
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    .line 135
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "summary"

    .line 136
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3c

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageUrl"

    const-string v5, ""

    .line 137
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageLocalUrl"

    .line 138
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "req_type"

    const/4 v4, 0x2

    .line 139
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "targetUrl"

    .line 140
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getmTargetUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_url"

    .line 141
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "error"

    .line 143
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v3
.end method

.method private buildTextBundle()Landroid/os/Bundle;
    .locals 3

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "summary"

    .line 50
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "req_type"

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private buildVideoBundle()Landroid/os/Bundle;
    .locals 8

    .line 57
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 62
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    move-object v2, v1

    .line 64
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 71
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    .line 72
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "summary"

    .line 73
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3c

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageUrl"

    const-string v5, ""

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageLocalUrl"

    .line 75
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "req_type"

    const/4 v4, 0x1

    .line 76
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "targetUrl"

    .line 77
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "error"

    .line 79
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v3
.end method

.method private buildWebBundle()Landroid/os/Bundle;
    .locals 7

    .line 86
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "imageUrl"

    .line 91
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 95
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 99
    :cond_2
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_0
    const-string v4, "imageLocalUrl"

    .line 101
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v2, "title"

    .line 105
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2d

    invoke-virtual {p0, v4, v5}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "summary"

    .line 106
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQQShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {p0, v4, v5}, Lcom/umeng/qq/handler/UmengQQShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "req_type"

    const/4 v4, 0x1

    .line 107
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "targetUrl"

    .line 108
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "error"

    .line 110
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$SHARE;->EMPTY_WEB_URL:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "error"

    .line 113
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method


# virtual methods
.method public getBundle(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 24
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getmStyle()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getmStyle()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->buildMusicBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getmStyle()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 29
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->buildWebBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->getmStyle()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 31
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->buildVideoBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 33
    :cond_3
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->buildTextBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "error"

    const/4 v3, 0x0

    const-string v4, "text"

    .line 34
    invoke-static {v3, v4}, Lcom/umeng/socialize/utils/UmengText;->supportStyle(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQQShareContent;->buildImageBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_5

    const-string p1, "cflag"

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    const-string p1, "cflag"

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "appName"

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method
