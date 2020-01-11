.class Lwang/switchy/hin2n/activity/ListActivity$3$1;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

.field final synthetic val$currentSettingId:Ljava/lang/Long;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity$3;ILjava/lang/Long;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iput p2, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$position:I

    iput-object p3, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$currentSettingId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 6

    .line 130
    sget-object v0, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    invoke-virtual {v0}, Lwang/switchy/hin2n/service/N2NService;->stop()V

    .line 132
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    iget v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$position:I

    invoke-static {v0, v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$202(Lwang/switchy/hin2n/activity/ListActivity;I)I

    .line 134
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 136
    iget-object v2, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v2, v2, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {v2, v0, v1}, Lwang/switchy/hin2n/activity/ListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lwang/switchy/hin2n/activity/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$currentSettingId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 142
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v0

    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$currentSettingId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, v4}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIsSelcected(Z)V

    .line 145
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->update(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 149
    :goto_1
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v1, v1, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v1, v1, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v1, v4}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v1, v1, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    iget-object v2, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v2, v2, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v2}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v2}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-static {v1, v2}, Lwang/switchy/hin2n/activity/ListActivity;->access$302(Lwang/switchy/hin2n/activity/ListActivity;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 155
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v1, v1, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIsSelcected(Z)V

    .line 157
    iget-object v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v1, v1, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->update(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$400(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_setting_id"

    iget-object v3, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v3, v3, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v3}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$400(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setSelected(Z)V

    .line 162
    iget-object v0, p0, Lwang/switchy/hin2n/activity/ListActivity$3$1;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    iget-object v0, v0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v0}, Lwang/switchy/hin2n/activity/ListActivity;->access$500(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->notifyDataSetChanged()V

    .line 164
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->cancel()V

    return-void
.end method
