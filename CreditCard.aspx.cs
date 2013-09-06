using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Bluelaser.Utilities;
using System.Text;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //Display test credit card numbers // allios prepei na valoume bank slinks 
            this.lblMc.Text = CreditCardUtility.GetCardTestNumber(CreditCardTypeType.MasterCard).Replace(" ", "-");
            this.lblVisa.Text = CreditCardUtility.GetCardTestNumber(CreditCardTypeType.Visa).Replace(" ", "-");
            this.lblDisc.Text = CreditCardUtility.GetCardTestNumber(CreditCardTypeType.Discover).Replace(" ", "-");
            this.lblAmex.Text = CreditCardUtility.GetCardTestNumber(CreditCardTypeType.Amex).Replace(" ", "-");
        }
    }

    protected void btnValidate_Click(object sender, EventArgs e)
    {
        if (txtCard.Text.Length > 0)
        {
            string cardNum = txtCard.Text.Trim();

            if (CreditCardUtility.IsValidNumber(cardNum))
            {
                CreditCardTypeType? cardType = CreditCardUtility.GetCardTypeFromNumber(cardNum);
                string strCardType = (cardType == null) ? "Unknown" : cardType.ToString();

                showMessage(String.Format("You have entered a valid card number. The card type is {0}.", strCardType), true);
            }
            else
                showMessage("Card failed Luhn test. Please enter a valid card number.", false);
        }
        else
            showMessage("Please enter a card number first.", false);
    }

    protected void showMessage(string msg, bool isSuccess)
    {
        this.lblMsg.Text = msg;

        if (isSuccess)
            lblMsg.CssClass = "success";
        else
            lblMsg.CssClass = "fail";
    }
}
