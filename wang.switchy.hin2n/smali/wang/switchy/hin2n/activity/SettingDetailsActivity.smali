.class public Lwang/switchy/hin2n/activity/SettingDetailsActivity;
.super Lwang/switchy/hin2n/activity/BaseActivity;
.source "SettingDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUECT_CODE_VPN:I = 0x2

.field public static TYPE_SETTING_ADD:I = 0x0

.field public static TYPE_SETTING_MODIFY:I = 0x1


# instance fields
.field private mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

.field private mAcceptMuticastView:Landroid/widget/RelativeLayout;

.field private mAllowRoutinCheckBox:Landroid/widget/CheckBox;

.field private mButtons:Landroid/widget/LinearLayout;

.field private mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

.field private mDeleteBtn:Landroid/widget/Button;

.field private mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

.field private mHin2nEdit:Landroid/content/SharedPreferences$Editor;

.field private mHin2nSp:Landroid/content/SharedPreferences;

.field private mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

.field private mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

.field private mLocalIP:Landroid/support/design/widget/TextInputLayout;

.field private mLocalIpCheckBox:Landroid/widget/CheckBox;

.field private mLocalPort:Landroid/support/design/widget/TextInputLayout;

.field private mMacAddr:Landroid/support/design/widget/TextInputLayout;

.field private mModifyBtn:Landroid/widget/Button;

.field private mMoreSettingCheckBox:Landroid/widget/CheckBox;

.field private mMoreSettingView:Landroid/widget/RelativeLayout;

.field private mMtu:Landroid/support/design/widget/TextInputLayout;

.field private mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

.field private mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

.field private mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSaveId:J

.field private mSettingName:Landroid/support/design/widget/TextInputLayout;

.field private mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

.field private mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

.field private mTraceLevelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTraceLevelSpinner:Landroid/widget/Spinner;

.field private mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

.field private mVersionGroup:Landroid/widget/RadioGroup;

.field private mVersionV1:Landroid/widget/RadioButton;

.field private mVersionV2:Landroid/widget/RadioButton;

.field private mVersionV2s:Landroid/widget/RadioButton;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/BaseActivity;-><init>()V

    .line 55
    sget v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_ADD:I

    iput v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->type:I

    return-void
.end method

.method static synthetic access$000(Lwang/switchy/hin2n/activity/SettingDetailsActivity;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->updateVersionGroupCheck(I)V

    return-void
.end method

.method static synthetic access$100(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)Landroid/support/design/widget/TextInputLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    return-object p0
.end method

.method private checkValues()Z
    .locals 7

    .line 507
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    .line 508
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    .line 509
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    .line 510
    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 558
    :cond_0
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkSupernode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " format is incorrect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 563
    :cond_1
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 565
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkCommunity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " format is incorrect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 570
    :cond_2
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 572
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkEncKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 573
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " format is incorrect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 577
    :cond_3
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 579
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 580
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " format is incorrect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v2

    .line 584
    :cond_4
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 590
    invoke-direct {p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getN2nVersion()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_6

    .line 592
    :cond_5
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lwang/switchy/hin2n/model/EdgeCmd;->checkSupernode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 593
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 595
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 596
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 599
    :cond_6
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 602
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lwang/switchy/hin2n/model/EdgeCmd;->checkMtu(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 603
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 605
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 606
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 609
    :cond_7
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    if-ne v0, v3, :cond_8

    .line 612
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x78

    invoke-static {v4, v5, v6}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v4

    if-nez v4, :cond_8

    .line 613
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 615
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 616
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 619
    :cond_8
    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    if-ne v0, v3, :cond_a

    .line 622
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 623
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 624
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 626
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 630
    :cond_9
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 634
    :cond_a
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0xffff

    invoke-static {v0, v2, v3}, Lwang/switchy/hin2n/model/EdgeCmd;->checkInt(III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 635
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 637
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 638
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 641
    :cond_b
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 644
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "255.255.255.0"

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkIPV4Mask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 645
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 647
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 648
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 651
    :cond_d
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 654
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwang/switchy/hin2n/model/EdgeCmd;->checkMacAddr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 655
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " format is incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 657
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 658
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return v2

    .line 661
    :cond_e
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    return v1

    .line 511
    :cond_f
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 512
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 513
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    .line 515
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 516
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 519
    :cond_10
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 522
    :cond_11
    :goto_2
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 523
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_13

    .line 525
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 526
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 529
    :cond_12
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 532
    :cond_13
    :goto_3
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 533
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_15

    .line 535
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 536
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    .line 539
    :cond_14
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 542
    :cond_15
    :goto_4
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 543
    iget-object v3, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    .line 545
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 546
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_5

    .line 549
    :cond_16
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_17
    :goto_5
    return v2
.end method

.method private getN2nVersion()I
    .locals 1

    .line 677
    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090098
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDefaultSupernode(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0d0055

    .line 351
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0d0056

    .line 352
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0d0057

    .line 353
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 356
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 354
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private updateVersionGroupCheck(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 334
    :pswitch_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 335
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->isDefaultSupernode(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x7f0d0057

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    goto/16 :goto_0

    .line 323
    :pswitch_1
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 325
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 327
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 328
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 329
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->isDefaultSupernode(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 330
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x7f0d0056

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->isDefaultSupernode(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x7f0d0055

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090098
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
    .locals 3

    .line 96
    new-instance v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mContext:Landroid/app/Activity;

    const v2, 0x7f0d0081

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lwang/switchy/hin2n/template/CommonTitleTemplate;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v1, v0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$1;

    invoke-direct {v2, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$1;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected doOnCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const-string p1, "Hin2n"

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    .line 115
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    const p1, 0x7f0900f8

    .line 117
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f09009c

    .line 119
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionGroup:Landroid/widget/RadioGroup;

    .line 120
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity$2;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$2;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p1, 0x7f090098

    .line 126
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV1:Landroid/widget/RadioButton;

    const p1, 0x7f090099

    .line 127
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV2:Landroid/widget/RadioButton;

    const p1, 0x7f09009a

    .line 128
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV2s:Landroid/widget/RadioButton;

    const p1, 0x7f0900f2

    .line 130
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900f7

    .line 131
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900ef

    .line 132
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900f0

    .line 133
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    .line 134
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const p1, 0x7f0900f9

    .line 135
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900a9

    .line 137
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingView:Landroid/widget/RelativeLayout;

    const p1, 0x7f090084

    .line 139
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    .line 140
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$3;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0900fa

    .line 151
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900f5

    .line 152
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900f6

    .line 153
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f0900f3

    .line 154
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f090030

    .line 155
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    .line 156
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;

    invoke-direct {v1, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$4;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0900f1

    .line 166
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f09009b

    .line 167
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f0900f4

    .line 168
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TextInputLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    const p1, 0x7f09001f

    .line 169
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAllowRoutinCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f0900a7

    .line 170
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastView:Landroid/widget/RelativeLayout;

    const p1, 0x7f090006

    .line 171
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f090124

    .line 172
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    const p1, 0x7f0900d0

    .line 174
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    .line 177
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    const v1, 0x7f0d0087

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    const v1, 0x7f0d008a

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    const v1, 0x7f0d0089

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    const v1, 0x7f0d0088

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    const v1, 0x7f0d0086

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelList:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    .line 184
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 186
    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0d0058

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 190
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$5;

    invoke-direct {v2, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$5;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const p1, 0x7f090028

    .line 201
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveBtn:Landroid/widget/Button;

    .line 202
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090077

    .line 204
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mButtons:Landroid/widget/LinearLayout;

    const p1, 0x7f090027

    .line 205
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mModifyBtn:Landroid/widget/Button;

    .line 206
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mModifyBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-virtual {p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "type"

    .line 209
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->type:I

    .line 211
    iget v2, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->type:I

    sget v4, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_ADD:I

    const/16 v5, 0x8

    if-ne v2, v4, :cond_1

    .line 213
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    check-cast p1, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const v2, 0x7f0d0081

    invoke-virtual {p1, v2}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(I)V

    .line 214
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0050

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 215
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV1:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0055

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 217
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0047

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 218
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0052

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 219
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d004a

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 220
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0054

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 221
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d004f

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 222
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0049

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 223
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d004b

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 224
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0d004c

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d004d

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 226
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const v2, 0x7f0d0051

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(I)V

    .line 227
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Lwang/switchy/hin2n/model/EdgeCmd;->getRandomMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0d0053

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 229
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAllowRoutinCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0d0046

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0d0048

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 231
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f0d0059

    invoke-virtual {p0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 233
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 235
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 237
    :cond_1
    iget v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->type:I

    sget v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->TYPE_SETTING_MODIFY:I

    if-ne v1, v2, :cond_3

    .line 239
    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTemplate:Lwang/switchy/hin2n/template/BaseTemplate;

    check-cast v1, Lwang/switchy/hin2n/template/CommonTitleTemplate;

    const v2, 0x7f0d0083

    invoke-virtual {v1, v2}, Lwang/switchy/hin2n/template/CommonTitleTemplate;->setTitleText(I)V

    const-string v1, "saveId"

    const-wide/16 v6, 0x0

    .line 240
    invoke-virtual {p1, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveId:J

    .line 241
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object p1

    invoke-virtual {p1}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object p1

    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object p1

    iget-wide v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    iput-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 242
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getVersion()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV2s:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 248
    :pswitch_1
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV2:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionV1:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 256
    :goto_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getNetmask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getCommunity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getSuperNodeBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getMtu()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {p1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object p1

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 267
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TextInputLayout;->setEnabled(Z)V

    .line 268
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 270
    :cond_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    :goto_1
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getHolePunchInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getResoveSupernodeIP()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getLocalPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAllowRoutinCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getAllowRouting()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 277
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getDropMuticast()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getUseHttpTunnel()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 279
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getTraceLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 280
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 282
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mButtons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 286
    :cond_3
    :goto_2
    iget-object p1, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mVersionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-direct {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->updateVersionGroupCheck(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getContentLayout()I
    .locals 1

    const v0, 0x7f0b001c

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 296
    invoke-super {p0, p1, p2, p3}, Lwang/switchy/hin2n/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 299
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lwang/switchy/hin2n/service/N2NService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 301
    new-instance p3, Lwang/switchy/hin2n/model/N2NSettingInfo;

    iget-object v0, p0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-direct {p3, v0}, Lwang/switchy/hin2n/model/N2NSettingInfo;-><init>(Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;)V

    const-string v0, "n2nSettingInfo"

    .line 302
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "Setting"

    .line 303
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, p1}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 29

    move-object/from16 v0, p0

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    .line 363
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->checkValues()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v1

    .line 368
    iget-object v5, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    const/4 v6, 0x0

    .line 371
    :goto_0
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    sget-object v8, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v8, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v10, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v7, v8, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    add-int/2addr v6, v4

    .line 373
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

    .line 377
    :cond_1
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->IsSelcected:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 381
    :goto_1
    new-instance v15, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    const/4 v7, 0x0

    invoke-direct/range {p0 .. p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getN2nVersion()I

    move-result v8

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    .line 382
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    .line 383
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    .line 384
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v16

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    .line 385
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    .line 386
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "auto"

    :goto_2
    move-object/from16 v20, v6

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :goto_3
    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    .line 387
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v22

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    .line 388
    invoke-virtual {v6}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAllowRoutinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v24

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

    .line 389
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    xor-int/lit8 v25, v6, 0x1

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v26

    iget-object v6, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    .line 390
    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v28

    xor-int/lit8 v27, v5, 0x1

    move-object v6, v15

    move-object v2, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v28

    invoke-direct/range {v6 .. v27}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIZ)V

    iput-object v2, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 391
    iget-object v2, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1, v2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->insert(Ljava/lang/Object;)J

    if-nez v5, :cond_4

    .line 394
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->IsSelcected:Lorg/greenrobot/greendao/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    iput-object v1, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 395
    iget-object v1, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    const-string v2, "current_setting_id"

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v3}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 396
    iget-object v1, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    :cond_4
    new-instance v1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d003a

    .line 400
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$6;

    invoke-direct {v2, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$6;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 401
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    goto/16 :goto_8

    .line 410
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->checkValues()Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 414
    :cond_5
    invoke-static {}, Lwang/switchy/hin2n/Hin2nApplication;->getInstance()Lwang/switchy/hin2n/Hin2nApplication;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/Hin2nApplication;->getDaoSession()Lwang/switchy/hin2n/storage/db/base/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/DaoSession;->getN2NSettingModelDao()Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;

    move-result-object v1

    .line 415
    iget-object v2, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSettingName:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v6, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    move-object v9, v2

    const/4 v6, 0x0

    :goto_4
    if-eqz v5, :cond_7

    .line 420
    invoke-virtual {v5}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v10, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveId:J

    cmp-long v5, v7, v10

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/2addr v6, v4

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 426
    invoke-virtual {v1}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v7, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao$Properties;->Name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v7, v9}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    new-array v8, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v7, v8}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    goto :goto_4

    .line 429
    :cond_7
    :goto_5
    new-instance v2, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    iget-wide v5, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getN2nVersion()I

    move-result v8

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mIpAddressTIL:Landroid/support/design/widget/TextInputLayout;

    .line 430
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mNetMaskTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mCommunityTIL:Landroid/support/design/widget/TextInputLayout;

    .line 431
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mEncryptTIL:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeTIL:Landroid/support/design/widget/TextInputLayout;

    .line 432
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMoreSettingCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSuperNodeBackup:Landroid/support/design/widget/TextInputLayout;

    .line 433
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMacAddr:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mMtu:Landroid/support/design/widget/TextInputLayout;

    .line 434
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIpCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "auto"

    :goto_6
    move-object/from16 v19, v3

    goto :goto_7

    :cond_8
    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalIP:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :goto_7
    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHolePunchInterval:Landroid/support/design/widget/TextInputLayout;

    .line 435
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mResoveSupernodeIPCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mLocalPort:Landroid/support/design/widget/TextInputLayout;

    .line 436
    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAllowRoutinCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mAcceptMuticastCheckBox:Landroid/widget/CheckBox;

    .line 437
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    xor-int/lit8 v24, v3, 0x1

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mUseHttpTunnelCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v25

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mTraceLevelSpinner:Landroid/widget/Spinner;

    .line 438
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v26

    iget-object v3, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v3}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;->getIsSelcected()Z

    move-result v27

    move-object v6, v2

    invoke-direct/range {v6 .. v27}, Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;-><init>(Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZZZIZ)V

    iput-object v2, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    .line 439
    iget-object v2, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mN2NSettingModel:Lwang/switchy/hin2n/storage/db/base/model/N2NSettingModel;

    invoke-virtual {v1, v2}, Lwang/switchy/hin2n/storage/db/base/N2NSettingModelDao;->update(Ljava/lang/Object;)V

    .line 441
    sget-object v1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    const v2, 0x7f0d0041

    if-eqz v1, :cond_a

    sget-object v1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    .line 442
    invoke-virtual {v1}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object v1

    sget-object v3, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->DISCONNECT:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq v1, v3, :cond_a

    sget-object v1, Lwang/switchy/hin2n/service/N2NService;->INSTANCE:Lwang/switchy/hin2n/service/N2NService;

    .line 443
    invoke-virtual {v1}, Lwang/switchy/hin2n/service/N2NService;->getCurrentStatus()Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    move-result-object v1

    sget-object v3, Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;->FAILED:Lwang/switchy/hin2n/model/EdgeStatus$RunningStatus;

    if-eq v1, v3, :cond_a

    .line 444
    iget-object v1, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mHin2nSp:Landroid/content/SharedPreferences;

    const-string v3, "current_setting_id"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->mSaveId:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_9

    .line 446
    new-instance v1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0042

    .line 447
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    const v2, 0x7f0d003e

    .line 448
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    const v2, 0x7f0d0044

    .line 449
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 450
    invoke-virtual {v1, v4}, Lcn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$8;

    invoke-direct {v2, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$8;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 451
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;

    invoke-direct {v2, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$7;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 457
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    goto :goto_8

    .line 474
    :cond_9
    new-instance v1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 475
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$9;

    invoke-direct {v2, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$9;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 476
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    goto :goto_8

    .line 485
    :cond_a
    new-instance v1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 486
    invoke-virtual {v0, v2}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lwang/switchy/hin2n/activity/SettingDetailsActivity$10;

    invoke-direct {v2, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$10;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 487
    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 669
    invoke-super {p0}, Lwang/switchy/hin2n/activity/BaseActivity;->onDestroy()V

    .line 671
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onErrorEvent(Lwang/switchy/hin2n/event/ErrorEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 708
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "Oops..."

    .line 709
    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    const-string v0, "Something went wrong!"

    .line 710
    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public onStartEvent(Lwang/switchy/hin2n/event/StartEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 691
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0d0043

    .line 692
    invoke-virtual {p0, v0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance v0, Lwang/switchy/hin2n/activity/SettingDetailsActivity$11;

    invoke-direct {v0, p0}, Lwang/switchy/hin2n/activity/SettingDetailsActivity$11;-><init>(Lwang/switchy/hin2n/activity/SettingDetailsActivity;)V

    .line 693
    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->show()V

    return-void
.end method

.method public onStopEvent(Lwang/switchy/hin2n/event/StopEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method
