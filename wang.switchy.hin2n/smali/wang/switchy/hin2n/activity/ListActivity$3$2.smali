.class Lwang/switchy/hin2n/activity/ListActivity$3$2;
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


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/ListActivity$3;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$3$2;->this$1:Lwang/switchy/hin2n/activity/ListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0

    .line 124
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->cancel()V

    return-void
.end method
