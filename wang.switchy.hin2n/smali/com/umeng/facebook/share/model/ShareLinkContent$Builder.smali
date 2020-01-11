.class public final Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
.super Lcom/umeng/facebook/share/model/ShareContent$Builder;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent$Builder<",
        "Lcom/umeng/facebook/share/model/ShareLinkContent;",
        "Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private imageUrl:Landroid/net/Uri;

.field private quote:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/ShareLinkContent;
    .locals 2

    .line 171
    new-instance v0, Lcom/umeng/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareLinkContent;-><init>(Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;Lcom/umeng/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/umeng/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 121
    check-cast p1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareLinkContent;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareLinkContent;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    .line 181
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 121
    check-cast p1, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareLinkContent;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 145
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setQuote(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object p0
.end method
