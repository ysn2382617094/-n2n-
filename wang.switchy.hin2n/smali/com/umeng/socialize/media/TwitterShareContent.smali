.class public Lcom/umeng/socialize/media/TwitterShareContent;
.super Lcom/umeng/socialize/media/SimpleShareContent;
.source "TwitterShareContent.java"


# instance fields
.field public isHasPic:Z


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/ShareContent;)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/SimpleShareContent;-><init>(Lcom/umeng/socialize/ShareContent;)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/umeng/socialize/media/TwitterShareContent;->isHasPic:Z

    .line 13
    iget-object v1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/umeng/socialize/ShareContent;->mMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of p1, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/umeng/socialize/media/TwitterShareContent;->isHasPic:Z

    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v0, p0, Lcom/umeng/socialize/media/TwitterShareContent;->isHasPic:Z

    :goto_0
    return-void
.end method
