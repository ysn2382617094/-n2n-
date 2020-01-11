.class Lwang/switchy/hin2n/activity/ListActivity$5$2;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


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

.field final synthetic val$currentSettingId:Ljava/lang/Long;

.field final synthetic val$finalSettingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity$5;Lwang/switchy/hin2n/entity/SettingItemEntity;Ljava/lang/Long;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iput-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$finalSettingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    iput-object p3, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$currentSettingId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 2

    .line 283
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$finalSettingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->deleteByKey(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$finalSettingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->this$1:Lwang/switchy/hin2n/activity/ListActivity$5;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$500(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->notifyDataSetChanged()V

    .line 289
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$currentSettingId:Ljava/lang/Long;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$5$2;->val$finalSettingItemEntity:Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {v0}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->cancel()V

    return-void
.end method
