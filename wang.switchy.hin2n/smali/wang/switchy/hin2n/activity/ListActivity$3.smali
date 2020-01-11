.class Lwang/switchy/hin2n/activity/ListActivity$3;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 102
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/ListActivity;->access$000(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "current_setting_id"

    const-wide/16 p4, -0x1

    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p2}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lwang/switchy/hin2n/entity/SettingItemEntity;

    .line 108
    invoke-virtual {p2}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 113
    :cond_0
    sget-object p2, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    sget-object p2, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    .line 114
    invoke-virtual {p2}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object p2

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq p2, v1, :cond_1

    sget-object p2, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    .line 115
    invoke-virtual {p2}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object p2

    sget-object v1, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq p2, v1, :cond_1

    .line 116
    new-instance p2, Lcn/pedant/SweetAlert/SweetAlertDialog;

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const/4 p5, 0x3

    invoke-direct {p2, p4, p5}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const p5, 0x7f0d0040

    .line 117
    invoke-virtual {p4, p5}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p2

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const p5, 0x7f0d003e

    .line 118
    invoke-virtual {p4, p5}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p2

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    const p5, 0x7f0d0044

    .line 119
    invoke-virtual {p4, p5}, Lwang/switchy/hin2n/activity/ListActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p2

    .line 120
    invoke-virtual {p2, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p2

    new-instance p4, Lwang/switchy/hin2n/activity/ListActivity$3$2;

    invoke-direct {p4, p0}, Lwang/switchy/hin2n/activity/ListActivity$3$2;-><init>(Lwang/switchy/hin2n/activity/ListActivity$3;)V

    .line 121
    invoke-virtual {p2, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p2

    new-instance p4, Lwang/switchy/hin2n/activity/ListActivity$3$1;

    invoke-direct {p4, p0, p3, p1}, Lwang/switchy/hin2n/activity/ListActivity$3$1;-><init>(Lwang/switchy/hin2n/activity/ListActivity$3;ILjava/lang/Long;)V

    .line 127
    invoke-virtual {p2, p4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    goto/16 :goto_1

    .line 169
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p2, 0x0

    cmp-long v3, v1, p4

    if-eqz v3, :cond_2

    .line 170
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object p4

    invoke-virtual {p4}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object p4

    invoke-virtual {p4}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1, p2}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIsSelcected(Z)V

    .line 173
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object p4

    invoke-virtual {p4}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object p4

    invoke-virtual {p4}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object p4

    invoke-virtual {p4, p1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->update(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    .line 177
    :goto_0
    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p4}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p1, p4, :cond_3

    .line 178
    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p4}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {p4, p2}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setSelected(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object p1

    invoke-virtual {p1}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p4}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {p4}, Lwang/switchy/hin2n/entity/SettingItemEntity;->getSaveId()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-static {p2, p4}, Lwang/switchy/hin2n/activity/ListActivity;->access$302(Lwang/switchy/hin2n/activity/ListActivity;Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 183
    iget-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p2}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object p2

    invoke-virtual {p2, v0}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->setIsSelcected(Z)V

    .line 185
    iget-object p2, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p2}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->update(Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/ListActivity;->access$400(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "current_setting_id"

    iget-object p4, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p4}, Lwang/switchy/hin2n/activity/ListActivity;->access$300(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-result-object p4

    invoke-virtual {p4}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-interface {p1, p2, p4, p5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 188
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/ListActivity;->access$400(Lwang/switchy/hin2n/activity/ListActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/ListActivity;->access$100(Lwang/switchy/hin2n/activity/ListActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwang/switchy/hin2n/entity/SettingItemEntity;

    invoke-virtual {p1, v0}, Lwang/switchy/hin2n/entity/SettingItemEntity;->setSelected(Z)V

    .line 190
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/ListActivity;->access$500(Lwang/switchy/hin2n/activity/ListActivity;)Lwang/switchy/hin2n/adapter/SettingItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lwang/switchy/hin2n/adapter/SettingItemAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method
