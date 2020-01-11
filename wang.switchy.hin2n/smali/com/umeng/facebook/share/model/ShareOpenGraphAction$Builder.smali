.class public final Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;
.super Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.source "ShareOpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphAction;",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_KEY:Ljava/lang/String; = "og:type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
    .locals 2

    .line 86
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareModel;)Lcom/umeng/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 69
    check-cast p1, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;
    .locals 1

    .line 101
    const-class v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    .line 101
    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    .line 96
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .locals 0

    .line 69
    check-cast p1, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setActionType(Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;
    .locals 1

    const-string v0, "og:type"

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    return-object p0
.end method
