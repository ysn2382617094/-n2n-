.class public final Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
.super Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;
.source "ShareOpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphAction;",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/share/model/ShareOpenGraphAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;Lcom/umeng/facebook/share/model/ShareOpenGraphAction$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "og:type"

    .line 53
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
