package batch.service.apachepoi;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.stereotype.Component;

import batch.service.dto.TrainingPoint;

@Component
public class XSSFTrainingPoint {
	public static List<TrainingPoint> readFileExcel() throws IOException {
		List<TrainingPoint> trainingPoints = new ArrayList<TrainingPoint>();
		// Creating a Workbook from an Excel file (.xls or .xlsx)
		Workbook workbook = WorkbookFactory.create(new File(
				"C:\\Users\\nguyencanhhoang\\eclipse-workspace\\BatchService\\src\\main\\resources\\point-training.xlsx"));
		Iterator<Sheet> sheetIterator = workbook.sheetIterator();
		// Định dạng, lấy giá trị từ một cell
		FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
		while (sheetIterator.hasNext()) {
			Sheet sheet = sheetIterator.next();
			// lấy ra tất cả các row có trong 1 sheet
			Iterator<Row> rows = sheet.rowIterator();
			// duyệt row
			while (rows.hasNext()) {
				// lấy ra 1 row để xử lý
				Row row = rows.next();
				// lấy ra tấy các cell có trong row
				Iterator<Cell> cells = row.cellIterator();
				// duyệt cell
				while (cells.hasNext()) {
					// lấy ra 1 cell để xử lý
					Cell cell = cells.next();
					// lấy ra value của cell
					System.out.print(getCellValue(cell, evaluator) + "\t");
				}
				System.out.print("\t");

			}

			System.out.println("=> " + sheet.getSheetName());
		}
		return trainingPoints;
	}

	private static Object getCellValue(Cell cell, FormulaEvaluator evaluator) {
		CellValue cellValue = evaluator.evaluate(cell);
		switch (cellValue.getCellTypeEnum()) {
		case BOOLEAN:
			return cellValue.getBooleanValue();
		case NUMERIC:
			return cellValue.getNumberValue();
		case STRING:
			return cellValue.getStringValue();
		case BLANK:
			return "";
		case ERROR:
			return cellValue.getError(cell.getErrorCellValue()).getStringValue();
		// CELL_TYPE_FORMULA will never happen
		case FORMULA:
		default:
			return null;
		}
	}

	public static void main(String args[]) throws IOException {
		System.out.print(XSSFTrainingPoint.readFileExcel());
	}
}
