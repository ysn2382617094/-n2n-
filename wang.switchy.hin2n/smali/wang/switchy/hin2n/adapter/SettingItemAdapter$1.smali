.class Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;
.super Ljava/lang/Object;
.source "SettingItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/adapter/SettingItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

.field final synthetic val$position:I

.field final synthetic val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/adapter/SettingItemAdapter;Lwang/switchy/hin2n/entity/SettingItemEntity;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;->this$0:Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    iput-object p2, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;->val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    iput p3, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;->val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    iget-object p1, p1, Lwang/switchy/hin2n/entity/SettingItemEntity;->mOnMoreBtnClickListener:Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;

    iget v0, p0, Lwang/switchy/hin2n/adapter/SettingItemAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;->onClick(I)V

    return-void
.end method
