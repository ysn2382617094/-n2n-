.class Lwang/switchy/hin2n/activity/ListActivity$5;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Lcom/baoyz/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity;->doOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/ListActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(ILcom/baoyz/swipemenulistview/SwipeMenu;I)Z
    .locals 28

    move-object/from16 v0, p0

    .line 224
    iget-object v1, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwang/switchy/hin2n/entity/SettingItemEntity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    .line 268
    :pswitch_0
    iget-object v4, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v4}, Lwang/switchy/hin2n/activity/ListActivity;->access$000(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "current_setting_id"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 269
    new-instance v5, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object v6, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v6, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const v7, 0x7f0d003d

    .line 270
    invoke-virtual {v6, v7}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v5

    iget-object v6, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const v7, 0x7f0d003e

    .line 271
    invoke-virtual {v6, v7}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v5

    iget-object v6, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const v7, 0x7f0d0044

    .line 272
    invoke-virtual {v6, v7}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v5

    .line 273
    invoke-virtual {v5, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v2

    new-instance v5, Lwang/switchy/hin2n/activity/ListActivity$5$3;

    invoke-direct {v5, v0}, Lwang/switchy/hin2n/activity/ListActivity$5$3;-><init>(Lwang/switchy/hin2n/activity/ListActivity$5;)V

    .line 274
    invoke-virtual {v2, v5}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v2

    new-instance v5, Lwang/switchy/hin2n/activity/ListActivity$5$2;

    invoke-direct {v5, v0, v1, v4}, Lwang/switchy/hin2n/activity/ListActivity$5$2;-><init>(Lwang/switchy/hin2n/activity/ListActivity$5;Lwang/switchy/hin2n/entity/SettingItemEntity;Ljava/lang/Long;)V

    .line 280
    invoke-virtual {v2, v5}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    goto/16 :goto_1

    .line 228
    :pswitch_1
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v4

    invoke-virtual {v4}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v4

    invoke-virtual {v4}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v4

    .line 229
    invoke-virtual {v1}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-copy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    const/4 v6, 0x0

    .line 236
    :goto_0
    invoke-virtual {v4}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v10, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v7, v8, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    add-int/2addr v6, v2

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 242
    :cond_0
    new-instance v2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getVersion()I

    move-result v8

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getNetmask()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getCommunity()Ljava/lang/String;

    move-result-object v12

    .line 243
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getPassword()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMoreSettings()Z

    move-result v15

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v16

    .line 244
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMacAddr()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMtu()I

    move-result v18

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getHolePunchInterval()I

    move-result v20

    .line 245
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getResoveSupernodeIP()Z

    move-result v21

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalPort()I

    move-result v22

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getAllowRouting()Z

    move-result v23

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getDropMuticast()Z

    move-result v24

    .line 246
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->isUseHttpTunnel()Z

    move-result v25

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getTraceLevel()I

    move-result v26

    const/16 v27, 0x0

    invoke-direct/range {v6 .. v27}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIZ)V

    .line 247
    invoke-virtual {v4, v2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->insert(Ljava/lang/Object;)J

    .line 250
    new-instance v1, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result v2

    invoke-direct {v1, v4, v5, v2}, Lwang/switchy/hin2n/entity/SettingItemEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Z)V

    .line 253
    new-instance v2, Lwang/switchy/hin2n/activity/ListActivity$5$1;

    invoke-direct {v2, v0, v1}, Lwang/switchy/hin2n/activity/ListActivity$5$1;-><init>(Lwang/switchy/hin2n/activity/ListActivity$5;Lwang/switchy/hin2n/entity/SettingItemEntity;)V

    invoke-virtual {v1, v2}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setOnMoreBtnClickListener(Lwang/switchy/hin2n/entity/SettingItemEntity$OnMoreBtnClickListener;)V

    .line 263
    iget-object v2, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v2}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v1, v0, Lwang/switchy/hin2n/activity/ListActivity$5;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {v1}, Lwang/switchy/hin2n/activity/ListActivity;->access$500(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->notifyDataSetChanged()V

    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
