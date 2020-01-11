.class public final Lcom/umeng/facebook/share/model/ShareOpenGraphObject;
.super Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;
.source "ShareOpenGraphObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/ShareOpenGraphObject$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphObject;",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphObject$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/share/model/ShareOpenGraphObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphObject$1;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphObject$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/share/model/ShareOpenGraphObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphObject$Builder;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphObject$Builder;Lcom/umeng/facebook/share/model/ShareOpenGraphObject$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphObject;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphObject$Builder;)V

    return-void
.end method
