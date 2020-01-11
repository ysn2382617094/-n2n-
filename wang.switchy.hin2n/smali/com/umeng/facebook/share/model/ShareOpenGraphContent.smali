.class public final Lcom/umeng/facebook/share/model/ShareOpenGraphContent;
.super Lcom/umeng/facebook/share/model/ShareContent;
.source "ShareOpenGraphContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/share/model/ShareContent<",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphContent;",
        "Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/umeng/facebook/share/model/ShareOpenGraphContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

.field private final previewPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;-><init>()V

    sput-object v0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 47
    new-instance v0, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Landroid/os/Parcel;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->action:Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareContent;-><init>(Lcom/umeng/facebook/share/model/ShareContent$Builder;)V

    .line 41
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;->access$000(Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;)Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->action:Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    .line 42
    invoke-static {p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;->access$100(Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;Lcom/umeng/facebook/share/model/ShareOpenGraphContent$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;-><init>(Lcom/umeng/facebook/share/model/ShareOpenGraphContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->action:Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    return-object v0
.end method

.method public getPreviewPropertyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 72
    invoke-super {p0, p1, p2}, Lcom/umeng/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->action:Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object p2, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
