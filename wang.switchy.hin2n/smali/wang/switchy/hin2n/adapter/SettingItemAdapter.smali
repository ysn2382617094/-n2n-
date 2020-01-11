.class public Lwang/switchy/hin2n/adapter/SettingItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSettingItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwang/switchy/hin2n/entity/SettingItemEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lwang/switchy/hin2n/entity/SettingItemEntity;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mSettingItemEntities:Ljava/util/List;

    .line 30
    iget-object p1, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mSettingItemEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mSettingItemEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 51
    iget-object p3, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mSettingItemEntities:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lwang/switchy/hin2n/entity/SettingItemEntity;

    if-nez p2, :cond_0

    .line 53
    iget-object p2, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    new-instance v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;-><init>(Lwang/switchy/hin2n/adapter/SettingItemAdapter;)V

    const v1, 0x7f09010d

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->settingName:Landroid/widget/TextView;

    const v1, 0x7f090070

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->imgIsSelected:Landroid/widget/ImageView;

    const v1, 0x7f09006d

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->moreInfo:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;

    .line 65
    :goto_0
    iget-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->settingName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSettingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p3}, Lwang/switchy/hin2n/entity/SettingItemEntity;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->imgIsSelected:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v1, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->imgIsSelected:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_1
    iget-object v0, v0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$ViewHolder;->moreInfo:Landroid/widget/ImageView;

    new-instance v1, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;

    invoke-direct {v1, p0, p3, p1}, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;-><init>(Lwang/switchy/hin2n/adapter/SettingItemAdapter;Lwang/switchy/hin2n/entity/SettingItemEntity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
