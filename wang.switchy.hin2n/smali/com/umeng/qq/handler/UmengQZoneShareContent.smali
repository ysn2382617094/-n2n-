.class public Lcom/umeng/qq/handler/UmengQZoneShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "UmengQZoneShareContent.java"


# instance fields
.field public imagelist:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    return-void
.end method

.method private buildImageBundle()Landroid/os/Bundle;
    .locals 8

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmImages()[Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmImages()[Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmImages()[Lcom/umeng/socialize/media/UMImage;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 166
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "imageUrl"

    .line 171
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 178
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_IMAGE_ERROR:Ljava/lang/String;

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 182
    :cond_4
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    :goto_1
    const-string v3, "summary"

    .line 185
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "imageLocalUrl"

    .line 186
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 188
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v1, "imageUrl"

    .line 191
    iget-object v3, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 194
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "error"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method

.method private buildMusicBundle()Landroid/os/Bundle;
    .locals 8

    .line 129
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 134
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_IMAGE_ERROR:Ljava/lang/String;

    move-object v2, v1

    .line 136
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

    .line 138
    :cond_1
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 143
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    .line 144
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "summary"

    .line 145
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x258

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageLocalUrl"

    .line 146
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "imageUrl"

    .line 151
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "targetUrl"

    .line 152
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getmTargetUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_url"

    .line 153
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "error"

    .line 155
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method private buildTextBundle()Landroid/os/Bundle;
    .locals 3

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "summary"

    .line 53
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildVideoBundle()Landroid/os/Bundle;
    .locals 8

    .line 59
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 64
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_IMAGE_ERROR:Ljava/lang/String;

    move-object v2, v1

    .line 66
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

    .line 68
    :cond_1
    sget-object v1, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 73
    :goto_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "title"

    .line 74
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "summary"

    .line 75
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x258

    invoke-virtual {p0, v5, v6}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imageLocalUrl"

    .line 76
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 78
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "imageUrl"

    .line 81
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "targetUrl"

    .line 82
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "error"

    .line 84
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method private buildWebBundle()Landroid/os/Bundle;
    .locals 7

    .line 91
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getUmWeb()Lcom/umeng/socialize/media/UMWeb;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "imageUrl"

    .line 98
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getUMImageScale(Lcom/umeng/socialize/media/UMImage;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 102
    sget-object v3, Lcom/umeng/socialize/utils/UmengText$IMAGE;->SHARECONTENT_THUMB_ERROR:Ljava/lang/String;

    .line 104
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->asFileImage()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 106
    :cond_2
    sget-object v2, Lcom/umeng/socialize/utils/UmengText$QQ;->QQ_PERMISSION:Ljava/lang/String;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    :goto_0
    const-string v4, "imageLocalUrl"

    .line 108
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "imageUrl"

    .line 113
    iget-object v4, p0, Lcom/umeng/qq/handler/UmengQZoneShareContent;->imagelist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_4
    :goto_1
    const-string v2, "title"

    .line 118
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetTitle(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-virtual {p0, v4, v5}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "summary"

    .line 119
    invoke-virtual {p0, v0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->objectSetDescription(Lcom/umeng/socialize/media/BaseMediaObject;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x258

    invoke-virtual {p0, v4, v5}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->subString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "targetUrl"

    .line 120
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMWeb;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "error"

    .line 122
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method


# virtual methods
.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 27
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmStyle()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->buildMusicBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umeng_type"

    const-string v2, "qzone"

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 34
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->buildWebBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umeng_type"

    const-string v2, "qzone"

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->getmStyle()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 38
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->buildVideoBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umeng_type"

    const-string v2, "qzone"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_3
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->buildTextBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umeng_type"

    const-string v2, "shuoshuo"

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/umeng/qq/handler/UmengQZoneShareContent;->buildImageBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "umeng_type"

    const-string v2, "shuoshuo"

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "appName"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
