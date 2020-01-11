.class Lwang/switchy/hin2n/activity/ListActivity$5$1;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity$5;->onMenuItemClick(ILcom/baoyz/swipemenulistview/SwipeMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

.field final synthetic val$settingItemEntity2:Lwang/switchy/hin2n/entity/SettingItemEntity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity$5;Lwang/switchy/hin2n/entity/SettingItemEntity;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iput-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$5$1;->val$settingItemEntity2:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 256
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$5$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const-class v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 257
    sget v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_MODIFY:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "saveId"

    .line 258
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$1;->val$settingItemEntity2:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$5$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {v0, p1}, Lwang/switchy/hin2n/activity/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
