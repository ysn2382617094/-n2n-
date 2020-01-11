.class Lwang/switchy/hin2n/activity/ListActivity$6;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/ListActivity;

.field final synthetic val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity;Lwang/switchy/hin2n/entity/SettingItemEntity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$6;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    iput-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$6;->val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 329
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$6;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const-class v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    .line 330
    sget v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_MODIFY:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "saveId"

    .line 331
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$6;->val$settingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$6;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {v0, p1}, Lwang/switchy/hin2n/activity/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
