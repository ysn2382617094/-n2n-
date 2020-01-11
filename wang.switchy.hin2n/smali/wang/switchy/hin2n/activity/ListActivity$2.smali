.class Lwang/switchy/hin2n/activity/ListActivity$2;
.super Ljava/lang/Object;
.source "ListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/ListActivity;->createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
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

    .line 77
    iput-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$2;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lwang/switchy/hin2n/activity/ListActivity$2;->this$0:Lwang/switchy/hin2n/activity/ListActivity;

    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/ListActivity;->finish()V

    return-void
.end method
