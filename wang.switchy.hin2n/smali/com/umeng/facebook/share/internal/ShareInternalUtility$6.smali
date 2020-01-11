.class final Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/umeng/facebook/internal/Utility$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/internal/ShareInternalUtility;->getMediaInfos(Lcom/umeng/facebook/share/model/ShareMediaContent;Ljava/util/UUID;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/internal/Utility$Mapper<",
        "Lcom/umeng/facebook/share/model/ShareMedia;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appCallId:Ljava/util/UUID;

.field final synthetic val$attachments:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;->val$appCallId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;->val$attachments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/umeng/facebook/share/model/ShareMedia;)Landroid/os/Bundle;
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;->val$appCallId:Ljava/util/UUID;

    .line 299
    invoke-static {v0, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareMedia;)Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;->val$attachments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 304
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareMedia;->getMediaType()Lcom/umeng/facebook/share/model/ShareMedia$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareMedia$Type;->name()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uri"

    .line 307
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    check-cast p1, Lcom/umeng/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/internal/ShareInternalUtility$6;->apply(Lcom/umeng/facebook/share/model/ShareMedia;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
