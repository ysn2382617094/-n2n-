.class public abstract Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;
.super Ljava/lang/Object;
.source "ShareOpenGraphValueContainer.java"

# interfaces
.implements Lcom/umeng/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder<",
            "TP;TE;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;->access$000(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 243
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
